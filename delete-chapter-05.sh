#!/usr/bin/bash

# Check if the output of Chapter-05 lab exists
if [ -d "$HOME/Documents/Chapter-05-Lab-Output" ]; then
     rm -rf "$HOME/Documents/Chapter-05-Lab-Output"
     echo "Chapter 05 lab content is not present."
else
     echo "Chapter 05 lab content is not present."
fiO
