#! /bin/bash

find /home/vboxuser/Desktop -maxdepth 1 -name 'Screenshot*.png' >> /home/vboxuser/Desktop/BashScripts/log.txt
DIR="/home/vboxuser/Pictures/Screenshots"
if [ ! -d "$DIR" ]; then
    mkdir -p "$DIR"
    echo "Directory $DIR created"
else
    echo "Directory already $DIR exists"
fi

if ls /home/vboxuser/Desktop/Screenshot*.png 1> /dev/null 2>&1; then 
    mv /home/vboxuser/Desktop/Screenshot*.png "$DIR"
    echo 'All screenshots have been added to the folder named screenshots'
else
    echo 'No screenshots to move'
fi
