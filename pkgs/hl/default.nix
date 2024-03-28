{ lib, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "hl";
  version = "0.27.2";

  src = fetchFromGitHub {
    owner = "pamburus";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-VUkofFfSzXVFn5LmBnHGItf7r3q9ymMsUMJkmkmMoXE=";
  };

  cargoLock = {
    lockFile = ./Cargo.lock;
    allowBuiltinFetchGit = true;
  };
}
