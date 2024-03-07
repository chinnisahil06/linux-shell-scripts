#!/bin/bash

# Redirect content of roster.txt into an array and make a directory for each name

while IFS= read -r line; do
   mkdir -p "$HOME/$line"
   echo "Directory created: $HOME/$line"
done < roster.txt

# List  the content of the  home directory
ls "$HOME"
