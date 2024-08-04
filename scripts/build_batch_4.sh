#!/usr/bin/env bash
set -e

mkdir -p result
nix-build --out-link result/groovy images/groovy.nix
nix-build --out-link result/guile images/guile.nix
nix-build --out-link result/hare images/hare.nix
