#!/usr/bin/env bash
set -e

mkdir -p result
nix-build --out-link result/rce-images-clang images/clang.nix
nix-build --out-link result/rce-images-clisp images/clisp.nix
nix-build --out-link result/rce-images-clojure images/clojure.nix