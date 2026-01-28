{
  description = "A simple mdBook project";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    mdbook.url = "github:pbar1/nix-mdbook";
  };

  outputs =
    {
      nixpkgs,
      mdbook,
      self,
    }:
    let
      supportedSystems = [
        "x86_64-linux"
        "aarch64-linux"
      ];
      forEachSupportedSystem =
        f:
        nixpkgs.lib.genAttrs supportedSystems (
          system:
          f (
            let
              pkgs = nixpkgs.legacyPackages.${system};
            in
            {
              inherit pkgs;
            }
          )
        );
    in
    {
      packages = forEachSupportedSystem (
        { pkgs }:
        {
          book = mdbook.lib.buildMdBookProject {
            system = pkgs.stdenv.system;
            name = "simple";
            src = ./.;
          };
          default = self.packages.${pkgs.stdenv.system}.book;
        }
      );
      devShells = forEachSupportedSystem (
        { pkgs }:
        {
          default = pkgs.mkShellNoCC {
            packages = [
              pkgs.mdbook
              pkgs.nixfmt
            ];
          };
        }
      );
    };
}
