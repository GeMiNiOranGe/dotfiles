#!/bin/bash

ALIAS_FILE="$PWD/.gitconfig"

git config --global --add include.path "$ALIAS_FILE"
echo "Included $ALIAS_FILE into global Git config."
