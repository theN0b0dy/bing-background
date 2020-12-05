#!/bin/bash

url="https://www.bing.com/th?id=OHR.BenasqueValley_EN-US1614880060_1920x1080.jpg&rf=LaDigue_1920x1080.jpg"
image_name=$(date '+%Y-%m-%d.jpg') # exmple: [year-month-day.jpg] 2020-05-01.jpg
image_path=$HOME/Pictures/$image_name # also saving path

#downloading image ...
wget --output-document=$image_path $url

# changing gnome desktop wallpaper
gsettings set org.gnome.desktop.background picture-uri "file://$image_path"

