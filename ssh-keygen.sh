#!/bin/bash

KEY_TYPE="rsa"  # Modify this if you want a different key type
KEY_BITS="4096"  # Modify this if you want a different key size
OUTPUT_DIR="$HOME/.ssh"
KEY_NAME="id_rsa"  # Modify this if you want a different key name

# Create the output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Generate the SSH key pair
ssh-keygen -t "$KEY_TYPE" -b "$KEY_BITS" -C "Generated key" -f "$OUTPUT_DIR/$KEY_NAME"

# Display the path to the generated SSH key pair
echo "SSH key pair generated at: $OUTPUT_DIR/$KEY_NAME"
echo "Public key: $OUTPUT_DIR/$KEY_NAME.pub"

