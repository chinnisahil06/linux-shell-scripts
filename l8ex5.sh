#!/bin/bash

#Read content of names.txt and create directories or log duplicates

while IFS= read -r name; do
     if [ -d "/tmp/$name" ]; then
       echo "$name" >> /tmp/duplicates.txt
     else
       mkdir -v "/tmp/$name"
     fi
done < names.txt

