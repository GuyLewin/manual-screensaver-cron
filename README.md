# manual-screensaver-cron
This cron job is intended for people who want their Mac to auto-lock after inactivity period, but can't define the Screen Saver "Start after:" parameter (in my case - because of a Mac configuration profile enforced by my employer). 
It requires you [set your Mac to lock when screen saver starts](http://lewin.co.il/?p=55).

### Installation
  1. Copy `screensaver_cron.sh` to your favorite executable path (e.g `~/bin/screensaver_cron.sh`)
  2. `chmod +x ~/bin/screensaver_cron.sh`

In order to make this script run periodically, you need to define it as a cron job. Do that by editing your crontab file:
  1. Run `env EDITOR=vim crontab -e`
  2. Add the following line to the prompted editor: `*/120 * * * * /Users/<youruser>/bin/screensaver_cron.sh` (replace <youruser> with your Mac username).

### Configuration
The `*/120` part of the crontab means this script will run 120 times in a minute (every 30 seconds). Feel free to change this parameter to suit your needs.

The script itself is set to launch screen saver after 60 seconds of inactivity. It's defined within the script in an easy-to-change variable.

