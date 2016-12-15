{ pkgs ? import <nixpkgs> }:

let ghc = pkgs.haskellPackages.ghcWithPackages (ps: with ps; [
            servant servant-server cmdargs
          ]);
in pkgs.stdenv.mkDerivation {
  name = "sserve";
  version = "0.1";
  src = ./.;
  buildInputs = [ ghc ];
  buildPhase = "ghc sserve";
  installPhase = ''
    mkdir -p $out/bin
    mv sserve $out/bin
  '';
}
