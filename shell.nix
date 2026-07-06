{
  pkgs ? import <nixpkgs> { },
}:

pkgs.haskellPackages.shellFor {
  packages = hpkgs: [
    (hpkgs.callCabal2nix "godot-haskell" ./. { })
  ];

  nativeBuildInputs = [
    pkgs.nil
    pkgs.haskellPackages.cabal-install
    pkgs.haskellPackages.haskell-language-server

    pkgs.godot3
  ];
}
