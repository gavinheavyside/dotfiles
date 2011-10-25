if [[ ! -d /Volumes/secure ]]; then
  if [[ -f ~/disks/secure.dmg ]]; then
    echo -n "Attaching secured volume... "
    hdiutil attach ~/disks/secure.dmg > /dev/null
    echo "done"
  fi
fi
