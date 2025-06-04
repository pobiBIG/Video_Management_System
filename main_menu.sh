#!/bin/bash

while true; do
    clear
    echo "Please Select:"
    echo "	1. Create Account"
    echo "	2. Query Account"
    echo "	3. Rent Video"
    echo "	4. Return Video"
    echo "	0. Quit"

    read -p "Enter your choice: " choice

    case $choice in
        1) ./create_account.sh ;;
        2) ./query_account.sh ;;
        3) ./rent_video.sh ;;
        4) ./return_video.sh ;;
        0) exit ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done

