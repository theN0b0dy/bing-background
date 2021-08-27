## bash script for changing gnome background to today's bing image
### RUN
`
./bing-background.sh
`
### for i3wm users
install feh in Arch
`
sudo pacman -S feh
`
add this line to ./bing-background.sh
`
exec feh --randomize --bg-fill $image_path
`
## For automate in Arch
install cronie
`
sudo pacman -S cronie
`
automate in cron.hourly
`
sudo cp .bing-background.sh /etc/cron.hourly/bing-background
`
test for working
`
run-parts --test /etc/cron.hourly/
`
