#!/bin/bash
DELAY=1 
while [[ $REPLY != 0 ]]; do
    clear
    cat <<_EOF_
        Please Select an option:
        1. Display Something Nice 
        2. Display Disk Space
        3. Display Home 
        0. Quit
_EOF_
    read -p "Enter selection [0-3] > "
    if [[ $REPLY =~ ^[0-3]$ ]]; then
        if [[ $REPLY == 1 ]]; then
        echo "You look nice today"
        sleep $DELAY
        fi
    if [[ $REPLY == 2 ]]; then
        df -h
        sleep $DELAY
    fi
    if [[ $REPLY == 3 ]]; then
        if [[ $(id -u) -eq 0 ]]; then
            echo "Home"
            du -sh /home/*
        else
            echo "Home: ($USER)"
            du -sh $HOME
        fi
    sleep $DELAY
    fi
    else
        echo "Invalid entry."
        sleep $DELAY
    fi
done
echo "Done."
