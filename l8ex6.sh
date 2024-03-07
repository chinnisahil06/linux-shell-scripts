#!/bin/bash


# Check if file has executable permission

if [ -x "$HOME/topsecret/$1" ]; then
    echo "File $1 is executable."
else
    echo "Error: File $1 is not executable."
fi

