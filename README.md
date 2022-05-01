# What is this?
I got tired of bluetooth starting up Apple Music. This script just checks whether it is running every 30 seconds and then kills it.
1. Run `brew install pidof`
2. Run `nohup ./kill_apple_music.sh > /dev/null 2>&1 &`