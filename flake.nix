{
  description = "Crafting Interpreters jlox and clox";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";

  outputs = {nixpkgs, ...}: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShells.${system}.default = pkgs.mkShell.override {stdenv = pkgs.clangStdenv;} {
      packages = [
        pkgs.cmake
        pkgs.clang-tools # clangd
      ];

      shellHook = ''
        echo $(clang --version)
      '';
    };
  };
}
