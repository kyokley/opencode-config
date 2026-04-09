{
  description = "Opencode Config";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    bun3nix.url = "github:aabccd021/bun3nix";

    bun2nix = {
    url = "github:nix-community/bun2nix";
    inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        # To import an internal flake module: ./other.nix
        # To import an external flake module:
        #   1. Add foo to inputs
        #   2. Add foo as a parameter to the outputs function
        #   3. Add here: foo.flakeModule

      ];
      systems = [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin" ];
      perSystem = { config, self', inputs', pkgs, system, ... }:
        let
          inherit (pkgs.callPackage ./default.nix {}) nodeDependencies;
          npm_deps = import ./npm-deps.nix { inherit pkgs; };
        in
        {
          # Per-system attributes can be defined here. The self' and inputs'
          # module parameters provide easy access to attributes of the same
          # system.
          devShells.default = pkgs.mkShell {
            name = "opencode-dev-shell";
            buildInputs = [
              pkgs.nodejs
              pkgs.bun
              inputs.bun3nix.packages.${system}.default
              inputs.bun2nix.packages.${system}.default
            ];
          };

          packages.default = pkgs.stdenv.mkDerivation {
            name = "opencode";
            src = ./.;
            buildInputs = [ pkgs.makeWrapper ];
            installPhase = ''
              mkdir -p $out/bin $out/lib
              cp -r ./configs $out/lib/
              ln -s ${npm_deps}/lib/node_modules $out/lib/node_modules

              makeWrapper ${pkgs.opencode}/bin/opencode $out/bin/opencode \
                --set NODE_PATH $out/lib/node_modules \
                --prefix PATH : "${pkgs.lib.makeBinPath [
                  pkgs.typescript-language-server
                  pkgs.nixd
                ]}"
            '';
          };

          apps.default = {
            type = "app";
            program = "${self'.packages.default}/bin/opencode";
          };
        };
      flake = {
        # The usual flake attributes can be defined here, including system-
        # agnostic ones like nixosModule and system-enumerating ones, although
        # those are more easily expressed in perSystem.

      };
    };
}
