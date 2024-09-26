#!/bin/bash

subdirectory="$1"

# Check if subdirectory is provided and not empty
if [[ -z "$subdirectory" ]]; then
    echo "Error: No subdirectory specified."
    exit 1
fi

# Check if the subdirectory is a valid directory
if [[ ! -d "$subdirectory" ]]; then
    echo "Error: '$subdirectory' is not a valid directory."
    exit 1
fi

# Find .c files in the specified subdirectory
find "$subdirectory" -maxdepth 1 -type f -name "*.c"

