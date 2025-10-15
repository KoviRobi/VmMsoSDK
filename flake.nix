{
    outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
    let pkgs = nixpkgs.legacyPackages.${system};
    in {
        devShells.default = pkgs.mkShell {
            packages = [
                pkgs.cmake
                pkgs.ninja
                pkgs.qt6.full
                pkgs.libusb1
                pkgs.pkg-config
            ];
        };
    });
}
