{ pkgs ? import <nixpkgs> {} }:

pkgs.mkYarnPackage {
  name = "rce-images-node-modules";
  src = ./.;
  packageJSON = ./package.json;
  yarnLock = ./yarn.lock;
  yarnNix = ./yarn.nix;
}
