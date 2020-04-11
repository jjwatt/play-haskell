{ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "scratchc";
  version = "1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base ];
  license = stdenv.lib.licenses.gpl3;
}
