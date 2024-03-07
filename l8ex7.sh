#!/bin/bash

#check if a given file exists

if [ -f "$HOME/topsecret/$1" ]; then
    echo "File $! exists."
else 
    echo "Error: File $1 does not exist."
fi

