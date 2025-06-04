#!/bin/bash

clear
echo "[3] Rent Video"
read -p "Enter Name: " name

if [ -f "$name.txt" ]; then
    available_videos=("Amadeus" "Back to the Future" "Batman Returns" "Candy Candy" "Ghost Busters" "Star Wars" "Time Machine" "Avengers Forever" "Superman Returns")

    echo "	Videos Available"
    echo "	=================================="
    for i in "${!available_videos[@]}"; do
        echo "	$(($i+1)). ${available_videos[$i]}"
    done
    echo "	=================================="

    read -p "Please Select Number: " selected_number
    selected_video="${available_videos[$(($selected_number-1))]}"
    rental_date=$(date "+%m/%d")
    echo -e "$selected_video\t\t$rental_date" >> "$name.txt"
    echo "$selected_video is rented now." 
    read -p "Press Enter"
else
    echo "No account found for $name."
    read -p "Press Enter"
fi
