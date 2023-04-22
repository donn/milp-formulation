{
    pkgs ? import <nixpkgs> {}
}:

with pkgs; mkShell {
  propagatedBuildInputs = [
    (python3.withPackages(ps: with ps; [
      pip
      scipy
      numpy
      sympy
      matplotlib
      networkx
    ]))
    jupyter
  ];
}