#!/usr/bin/env bash
set -e

mkdir -p result
nix-build --out-link result/dart images/dart.nix
nix-build --out-link result/elixir images/elixir.nix
nix-build --out-link result/elm images/elm.nix
nix-build --out-link result/erlang images/erlang.nix
nix-build --out-link result/golang images/golang.nix
