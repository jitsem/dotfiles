#!/bin/bash

# Terminate already sxhkd instances
killall -q sxhkd

# Wait until the processes have been shut down
while pgrep -u $UID -x sxhkd >/dev/null; do sleep 1; done

# Launch sxhkd
sxhkd &

echo "Simple X HotKey Daemon launched..."
