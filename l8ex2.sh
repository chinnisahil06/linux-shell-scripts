#!/bin/bash
mapfile -t ROSTERARRAY < roster.txt

echo "${ROSTERARRAY[1]}"  # Arrays are zero-indexed
