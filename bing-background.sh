#!/bin/bash

url="https://bing.biturl.top/?resolution=1920&format=image&index=0&mkt=en-US"
image_name=$(date '+%Y-%m-%d.jpg') # exmple: [year-month-day.jpg] 2020-05-01.jpg
image_path=$HOME/Pictures/$image_name # also saving path

#downloading image ..
wget --output-document=$image_path $url

# changing gnome desktop wallpaper
gsettings set org.gnome.desktop.background picture-uri "file://$image_path"

# for i3wm user with feh
exec feh --randomize --bg-fill $image_path
