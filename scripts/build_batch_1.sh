#!/usr/bin/env bash
set -e

mkdir -p result
nix-build --out-link result/assembly images/assembly.nix
# nix-build --out-link result/ats images/ats.nix
# nix-build --out-link result/bash images/bash.nix
