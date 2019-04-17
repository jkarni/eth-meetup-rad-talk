{ pkgs ? import <nixpkgs> {}
}:

with pkgs;

let
  ghc = haskell.packages.${compiler}.ghcWithPackages (_: []);
in

stdenv.mkDerivation {
    name = "eth-meetup-radicle";
    buildInputs = [ texlive.combined.scheme-full ];
    LANG = "en_US.UTF-8";
    libraryPkgconfigDepends = [  ];
    shellHook = ''
    '';
}
