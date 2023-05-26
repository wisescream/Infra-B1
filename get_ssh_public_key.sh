#!/bin/bash

KEY_PATH="$HOME/.ssh/id_rsa.pub"

# Check if the SSH public key file exists
if [[ -f "$KEY_PATH" ]]; then
    echo "SSH public key found at: $KEY_PATH"
    cat "$KEY_PATH"
else
    echo "SSH public key not found."
fi

