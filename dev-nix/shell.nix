# {
#   pkgs ? import (fetchTarball {
#     url = https://github.com/NixOS/nixpkgs-channels/archive/8b1cf100cd8badad6e1b6d4650b904b88aa870db.tar.gz;
#     sha256 = "1p0xxyz30bd2bg0wrfviqgsskz00w647h0l2vi33w90i42k8r3li";
#   }) {}
# }:
# with import <nixpkgs> { };

#   with pkgs;
#   haskell.lib.buildStackProject {
#     name = "haskell-project";
#     buildInputs = [];
#     shellHook = ''
#       echo 'Entering Haskell Project Environment'
#       set -v

#       alias stack="\stack --nix"

#       set +v
#     '';
#   }
{ghc}:
with (import <nixpkgs> {});
haskell.lib.buildStackProject {
  inherit ghc;
  name = "myEnv";
  buildInputs = [ zlib ];
}
