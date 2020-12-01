#!/bin/bash

url="https://bing.biturl.top/?resolution=1920&format=image&index=0&mkt=en-US"
image_name=$(date '+%Y-%m-%d.jpg')
username=$(whoami)

#downloading image ... 
wget --output-document=/home/$username/Pictures/$image_name $url 

# changing background to image downloaded
gsettings set org.gnome.desktop.background picture-uri "file:///home/$username/Pictures/$image_name"

