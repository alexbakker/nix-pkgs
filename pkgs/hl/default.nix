{ lib, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "hl";
  version = "0.27.0";

  src = fetchFromGitHub {
    owner = "pamburus";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-XbzGHVICUuLTpSZcghhhWkYOMDZPeO/0rWmDzaguduU=";
  };

  cargoLock = {
    lockFile = ./Cargo.lock;
    allowBuiltinFetchGit = true;
  };
}
