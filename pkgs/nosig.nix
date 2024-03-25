{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  pname = "nosig";
  version = "2";

  src = fetchFromGitHub {
    owner = "vapier";
    repo = "nosig";
    rev = "v${version}";
    sha256 = "sha256-qDR/0FrZ9NCpXTumxgrru0YRLL64pXRxW4RNkuufwhY=";
  };

  makeFlags = ["PREFIX=${placeholder "out"}"];

  doCheck = true;
  preCheck = ''
    patchShebangs ./tests/runtests.sh
  '';
}
