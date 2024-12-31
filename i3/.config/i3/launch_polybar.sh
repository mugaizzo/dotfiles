killall polybar
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload bottoml &
  done
else
  polybar -l --reload bottoml &
fi
