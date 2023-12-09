#!/bin/bash

read -p "Enter text to convert to binar: " input_text

binar_output=""
for ((i = 0; i < ${#input_text}; i++)); do
    char="${input_text:$i:1}"
    binar_output+="$(printf "%08s" $(echo -n "$char" | od -An -vtu1) | tr ' ' '0') "
done

echo "Binar representation:"
echo "$binar_output"
