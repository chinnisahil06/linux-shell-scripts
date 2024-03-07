#!/usr/bin/bash

#Check for the presence of proper directories and files created by chapter-05-lab.sh

if [ -d "$HOME/Documents/Chapter-05-Lab-Output" ] && [ -f "$HOME/Documents/Chapter-05-Lab-Output/some-file.txt" ]; then
    echo "All required directories and files exist."
else
   echo "Required directories or files are missing."
fi
