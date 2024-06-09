{ lib, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "hl";
  version = "0.29.6";

  src = fetchFromGitHub {
    owner = "pamburus";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-LcsiEhhpi5mqTRBvzf9bddBfdyNxeY1ePLVJhANp20M=";
  };

  cargoLock = {
    lockFile = ./Cargo.lock;
    allowBuiltinFetchGit = true;
  };
}
