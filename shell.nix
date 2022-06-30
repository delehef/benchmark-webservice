{ pkgs ? import <nixpkgs> {} }:

let
  pythonEnv = pkgs.python38.withPackages (ps: [
    ps.pandas ps.lxml ps.dendropy ps.biopython ps.jsonschema ps.matplotlib
  ]);
in
pkgs.mkShell {
  buildInputs = [
    pkgs.nextflow pkgs.python pythonEnv
  ];
}
