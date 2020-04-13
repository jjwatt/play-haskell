let
  pkgs = import <nixpkgs> { };
in
pkgs.haskellPackages.callPackage ./scratchc.nix { }

