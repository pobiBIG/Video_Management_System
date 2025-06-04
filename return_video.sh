#!/bin/bash

clear
echo "[4] Return Video"
read -p "Enter Name: " name

# Check if the account file exists
if [ -f "$name.txt" ]; then
    echo "	Videos Rented"
    echo "	=================================="
    
    # Read and display rented videos from the account file with line numbers
    awk '{print NR". "$0}' "$name.txt"
    
    echo "	=================================="

    read -p "Please Select Number: " video_number

    # Check if the selected video number is valid
    if [ "$video_number" -gt 0 ] && [ "$video_number" -le "$(wc -l < "$name.txt")" ]; then
        # Return the selected video and update the account file
        returned_video=$(sed -n "${video_number}p" "$name.txt")
        echo "$returned_video is returned."
        
        # Remove the returned video from the rented videos list
        sed -i "${video_number}d" "$name.txt"
        
    else
        echo "Invalid selection. Please enter a valid number."
    fi
else
    echo "Account not found."
fi

read -p "Press Enter"
