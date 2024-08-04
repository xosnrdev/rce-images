#!/usr/bin/env bash
set -e

mkdir -p result
nix-build --out-link result/rce-images-mercury images/mercury.nix
nix-build --out-link result/rce-images-csharp images/csharp.nix
nix-build --out-link result/rce-images-fsharp images/fsharp.nix
