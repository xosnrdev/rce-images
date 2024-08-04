#!/usr/bin/env bash
set -e

mkdir -p result
nix-build --out-link result/rce-images-dart images/dart.nix
nix-build --out-link result/rce-images-elixir images/elixir.nix
nix-build --out-link result/rce-images-elm images/elm.nix
