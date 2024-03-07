#!/bin/bash

# Read content into an array and echo the 2nd element

ROSTERARRY=( $(cat roster.txt) )
echo "${ROSTERARRAY[1]}" #Arrays are zero-indexed
