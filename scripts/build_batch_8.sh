#!/usr/bin/env bash
set -e

mkdir -p result
nix-build --out-link result/rce-images-dlang images/dlang.nix
nix-build --out-link result/rce-images-erlang images/erlang.nix
nix-build --out-link result/rce-images-golang images/golang.nix