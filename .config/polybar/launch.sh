#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

polybar bar-1 &
polybar bar-2 &
# polybar bar-3 &

echo "Bars launched..."
