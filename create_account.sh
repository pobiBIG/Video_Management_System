#!/bin/bash

clear
echo "[1] Create Account"
echo "Enter Customer Info"
read -p "Name: " name
read -p "Phone Number: " phone

echo -e "Name: $name\nPhone Number: $phone" > "$name.txt"

echo "Account created successfully!"
read -p "Press Enter"
