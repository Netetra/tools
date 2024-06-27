#!/bin/bash

set -euo pipefail

function main() {
  if ! command -v shfmt &>/dev/null; then
    echo "Error: shfmt is not installed."
    exit 1
  fi

  find . -type f -name "*.sh" | while read -r script; do
    echo "Formating $script"
    shfmt -w "$script"
  done
}

main
