#!/bin/bash

KEY_TYPE="id_rsa"  # Modify this if you're using a different key type

# Search for SSH key files in the default locations
DEFAULT_PATHS=(
    "$HOME/.ssh/${KEY_TYPE}"
    "$HOME/.ssh/${KEY_TYPE}.pub"
)

# Search for SSH key files in non-standard locations
NON_DEFAULT_PATHS=(
    # Add any additional paths where you might have stored your SSH key files
)

# Function to check if a file exists
file_exists() {
    if [[ -f "$1" ]]; then
        return 0
    else
        return 1
    fi
}

# Function to check file permissions
check_permissions() {
    local permissions=$(stat -c %a "$1")
    if [[ "$permissions" == "$2" ]]; then
        return 0
    else
        return 1
    fi
}

# Function to find and display the SSH key details
find_ssh_key() {
    local found_key=false

    # Check default paths
    for path in "${DEFAULT_PATHS[@]}"; do
        if file_exists "$path" && check_permissions "$path" "600"; then
            echo "Private key found at: $path"
            found_key=true
        fi
        if file_exists "$path.pub" && check_permissions "$path.pub" "644"; then
            echo "Public key found at: $path.pub"
        fi
    done

    # Check non-default paths
    for path in "${NON_DEFAULT_PATHS[@]}"; do
        if file_exists "$path" && check_permissions "$path" "600"; then
            echo "Private key found at: $path"
            found_key=true
        fi
        if file_exists "$path.pub" && check_permissions "$path.pub" "644"; then
            echo "Public key found at: $path.pub"
        fi
    done

    if ! $found_key; then
        echo "SSH key not found."
    fi
}

# Call the function to find and display the SSH key details
find_ssh_key

