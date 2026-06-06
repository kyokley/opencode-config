{
  description = "Opencode Config";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    bun2nix = {
      url = "github:nix-community/bun2nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    devshell.url = "github:numtide/devshell";
  };

  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} {
      imports = [
        # To import an internal flake module: ./other.nix
        # To import an external flake module:
        #   1. Add foo to inputs
        #   2. Add foo as a parameter to the outputs function
        #   3. Add here: foo.flakeModule
        inputs.devshell.flakeModule
      ];
      systems = ["x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin"];
      perSystem = {
        config,
        self',
        inputs',
        pkgs,
        system,
        ...
      }: let
        npm_deps = pkgs.callPackage ./default.nix {
          bun2nix = inputs.bun2nix.packages.${system}.default;
        };
      in {
        # Per-system attributes can be defined here. The self' and inputs'
        # module parameters provide easy access to attributes of the same
        # system.
        devshells.default.devshell = {
          packages = [
            pkgs.bun
            inputs.bun2nix.packages.${system}.default
          ];
          motd = "";
          startup.start.text = ''
            export OPENCODE_CONFIG_DIR=$(pwd)/configs
            echo "Welcome to Opencode" | ${pkgs.figlet}/bin/figlet -cf slant | ${pkgs.lolcat}/bin/lolcat
          '';
        };

        packages = {
        inherit npm_deps;
        default = pkgs.stdenv.mkDerivation {
          name = "opencode";
          src = ./.;
          buildInputs = [pkgs.makeWrapper];
          installPhase = ''
            mkdir -p $out/bin $out/lib
            cp -r ./configs $out/lib/
            cp -r ${npm_deps}/lib/node_modules $out/lib/

            makeWrapper ${pkgs.opencode}/bin/opencode $out/bin/opencode \
              --set NODE_PATH ${self'.packages.npm_deps}/lib/node_modules \
              --prefix PATH : "${pkgs.lib.makeBinPath [
              pkgs.typescript-language-server
              pkgs.nixd
            ]}"
          '';
        };
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
