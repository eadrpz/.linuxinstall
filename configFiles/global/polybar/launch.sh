#! /bin/bash

# Kill all running polybars
killall -q polybar
pkill polybar

# launch polybar
polybar example
