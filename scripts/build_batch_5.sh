#!/usr/bin/env bash
set -e

mkdir -p result
nix-build --out-link result/rce-images-java images/java.nix
nix-build --out-link result/rce-images-javascript images/javascript.nix
nix-build --out-link result/rce-images-julia images/julia.nix