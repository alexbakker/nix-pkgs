{ stdenv, lib, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "aegis-rs";
  version = "0.3.1";
  src = fetchFromGitHub {
    owner = "Granddave";
    repo = "${pname}";
    rev = version;
    hash = "sha256-Eu9LNcHx04GqmPx1/Eh3KlDyWJiXptaOlpLMcwbTHs0=";
  };
  cargoHash = "sha256-6GUePS58eO6wKGSwR/MoNzT5M0WVRdUfKxdYMYZF1jk=";
}
