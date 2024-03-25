{ stdenv, lib, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "aegis-rs";
  version = "0.3.0";
  src = fetchFromGitHub {
    owner = "Granddave";
    repo = "${pname}";
    rev = version;
    hash = "sha256-UcQqLP28HZns5vglnhA6Dql+2QKSWJAH4u0SGRSqE5s=";
  };
  cargoHash = "sha256-RyqzcU2ZHttZJIOFWvvvuqgKID0ibavq/l+gWQ/UUQQ=";
}
