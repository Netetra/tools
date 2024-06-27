#!/bin/bash

set -euo pipefail

function main() {
  if ! command -v cargo &>/dev/null; then
    echo "Error: cargo is not installed."
    exit 1
  fi

  cargo generate \
    --git https://github.com/rp-rs/rp2040-project-template \
    --branch main \
    --name "$1"
}

main "$1"
