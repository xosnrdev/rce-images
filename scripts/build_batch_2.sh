#!/usr/bin/env bash
set -e

mkdir -p result
nix-build --out-link result/clang images/clang.nix
nix-build --out-link result/clisp images/clisp.nix
nix-build --out-link result/clojure images/clojure.nix