{ lib, callPackage }:

let
  modules = builtins.attrNames (lib.filterAttrs (_: v: v == "directory") (builtins.readDir ./.));
  compileModule = callPackage ./compile-module.nix {};
in lib.genAttrs modules
  (module: compileModule { name = module; src = (./. + "/${module}/${module}.c"); })
