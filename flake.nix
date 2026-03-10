{
  description = "Description for the project";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    old-nixpkgs.url = "github:NixOS/nixpkgs/ec7c70d12ce2fc37cb92aff673dcdca89d187bae";
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
          nodePackages = import ./node-packages.nix { inherit pkgs system; };
        in
        {
          # Per-system attributes can be defined here. The self' and inputs'
          # module parameters provide easy access to attributes of the same
          # system.
          devShells.default = pkgs.mkShell {
            name = "opencode-dev-shell";
            buildInputs = [
              pkgs.nodejs
              inputs.old-nixpkgs.legacyPackages.${system}.node2nix
              pkgs.bun
            ];
          };

          packages.default = nodePackages.package.override {
            src = ./.;
            buildInputs = [ pkgs.makeWrapper pkgs.nix ];
            installPhase = ''
              mkdir -p $out/bin $out/lib/configs
              cp -r ./configs $out/lib/
              cp -r ./node_modules $out/lib/

              wrapProgram ${pkgs.opencode}/bin/opencode \
                --prefix PATH : ${pkgs.nix}/bin
            '';
          };
        };
      flake = {
        # The usual flake attributes can be defined here, including system-
        # agnostic ones like nixosModule and system-enumerating ones, although
        # those are more easily expressed in perSystem.

      };
    };
}
