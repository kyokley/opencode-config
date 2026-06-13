{ bun2nix, ... }:
bun2nix.mkDerivation {
  pname = "opencode-deps";
  version = "1.0.0";

  packageJson = ./package.json;
  src = ./.;

  bunDeps = bun2nix.fetchBunDeps {
    bunNix = ./bun.nix;
  };

  module = "package.json";

  # We only need node_modules for bundling, not a compiled binary
  dontUseBunBuild = true;
  dontUseBunInstall = true;

  installPhase = ''
    mkdir -p $out/lib
    cp -r node_modules $out/lib/
  '';
}
