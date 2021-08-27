## bash script for changing gnome background to today's bing image
### RUN
`
./bing-background.sh
`
### for i3wm users
install feh in Arch
<br/>
`
sudo pacman -S feh
`
<br/>
add this line to ./bing-background.sh
<br/>
`
exec feh --randomize --bg-fill $image_path
`
## For automate in Arch
install cronie
<br/>
`
sudo pacman -S cronie
`
<br/>
automate in cron.hourly
<br/>
`
sudo cp .bing-background.sh /etc/cron.hourly/bing-background
`
<br/>
test for working
<br/>
`
run-parts --test /etc/cron.hourly/
`
