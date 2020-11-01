exec i3

# xmodmap ~/.Xmodmap
xrdb ~/.Xresources

# Layer fix for my keyboar
sudo killall stupidlayers
for x in /dev/input/event*; do
  devname=$(cat $(echo $x | sed 's|dev|sys/class|g')/device/name)
  if [ "$devname" = "SONiX USB DEVICE" ]; then
    sudo stupidlayers $x &
    break
  fi
done

