#!/bin/bash

# Check if a filename argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILENAME="$1"

# Check if the file exists
if [ ! -f "$FILENAME" ]; then
    echo "Error: File '$FILENAME' not found!"
    exit 1
fi

# Determine the file extension and decompress accordingly
case "$FILENAME" in
    *.gz)
        echo "Decompressing gzip file: $FILENAME"
        gunzip "$FILENAME"
        ;;
    *.bz2)
        echo "Decompressing bzip2 file: $FILENAME"
        bunzip2 "$FILENAME"
        ;;
    *.xz)
        echo "Decompressing xz file: $FILENAME"
        unxz "$FILENAME"
        ;;
    *)
        echo "Error: Unsupported file type. Supported types are .gz, .bz2, and .xz"
        exit 1
        ;;
esac

echo "Decompression complete."
