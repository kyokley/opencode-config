{ bun2nix, ... }:
bun2nix.mkDerivation {
  # pname = "opencode deps";
  # version = "1.0.0";

  packageJson = ./package.json;
  src = ./.;

  bunDeps = bun2nix.fetchBunDeps {
    bunNix = ./bun.nix;
  };

  module = "package.json";
}
