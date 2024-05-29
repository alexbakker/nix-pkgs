{ lib, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "hl";
  version = "0.29.4";

  src = fetchFromGitHub {
    owner = "pamburus";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-jnJKKfLpBq6zXA/GLoxxNzV6KB7Qfr4A+NdUpKbB3hY=";
  };

  cargoLock = {
    lockFile = ./Cargo.lock;
    allowBuiltinFetchGit = true;
  };
}
