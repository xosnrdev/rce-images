#!/usr/bin/env bash
set -e


for image in result/rce-images-*; do
  echo "Loading ${image}..."
  docker load -i "${image}"
done
