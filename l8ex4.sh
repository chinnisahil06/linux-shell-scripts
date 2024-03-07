#!/bin/bash

# Enhanced version  of l8ex3.sh with  checks for existing directories

while IFS= read -r line; do
   if [ -d "$HOME/$line" ]; then
     echo "Directory $HOME/$line exists."
   else
     mkdir -p "$HOME/$line"
    echo "New  directory created: $HOME/$line"
fi

done < roster.txt
