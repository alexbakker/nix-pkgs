{
  description = "Flake for some personal Nix packages";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, flake-utils, nixpkgs }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in rec {
        packages = flake-utils.lib.flattenTree rec {
          aegis-rs = pkgs.callPackage ./pkgs/aegis-rs.nix { };
          hl = pkgs.callPackage ./pkgs/hl { };
          nosig = pkgs.callPackage ./pkgs/nosig.nix { };
        };
        devShells.default = with pkgs; mkShell {
          buildInputs = [
            bubblewrap
          ];
        };
      }
    );
}
