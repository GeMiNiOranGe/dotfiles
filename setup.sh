#!/bin/bash

raw_config_path="$PWD/.gitconfig"

config_file=$(
    if command -v cygpath >/dev/null 2>&1; then
        cygpath --windows "$raw_config_path"
    else
        echo "$raw_config_path"
    fi
)

if git config --global --get-all include.path | grep -Fxq "$config_file"; then
    echo "$config_file is already included in the global Git config."
else
    git config --global --add include.path "$config_file"
    echo "Included $config_file into global Git config."
fi
