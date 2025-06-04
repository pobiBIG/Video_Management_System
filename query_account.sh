#!/bin/bash

clear
echo "[2] Query Account"
read -p "Enter Name: " name

if [ -f "$name.txt" ]; then
    echo "	Videos Rented"
    echo "	=================================="
    tail -n +3 "$name.txt" | cat -n
    echo "	=================================="
else
    echo "No account found for $name."
fi

read -p "Press Enter"

