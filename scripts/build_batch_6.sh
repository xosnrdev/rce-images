#!/usr/bin/env bash
set -e

mkdir -p result
nix-build --out-link result/mercury images/mercury.nix
nix-build --out-link result/csharp images/csharp.nix
nix-build --out-link result/fsharp images/fsharp.nix
