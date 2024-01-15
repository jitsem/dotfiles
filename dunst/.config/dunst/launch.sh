#!/bin/bash

# Terminate already dunst instances
killall -q dunst

# Wait until the processes have been shut down
while pgrep -u $UID -x dunst >/dev/null; do sleep 1; done

# Launch dunst
dunst &

echo "Simple X HotKey Daemon launched..."
