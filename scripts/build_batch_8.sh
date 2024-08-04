#!/usr/bin/env bash
set -e

mkdir -p result
nix-build --out-link result/dlang images/dlang.nix
nix-build --out-link result/erlang images/erlang.nix
nix-build --out-link result/golang images/golang.nix
