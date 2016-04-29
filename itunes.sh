#!/bin/bash
toggle=$1
password=$2

if [ -z "$toggle" ] || [ -z "$password" ]; then
  echo 'Too few arguments'
  echo 'itunes.sh <on/off> <password>'
  exit
fi
if [ $toggle = "on" ]; then
  echo $password | sudo -S mv /Applications/iTunes.app/Contents/MacOS/iTunesOff /Applications/iTunes.app/Contents/MacOS/iTunes
elif [ $toggle = "off" ]; then
  echo $password | sudo -S mv /Applications/iTunes.app/Contents/MacOS/iTunes /Applications/iTunes.app/Contents/MacOS/iTunesOff
else
  echo 'Specify "on" or "off"'
fi