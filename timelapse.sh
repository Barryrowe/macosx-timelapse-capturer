#!/bin/bash

rootPath=`pwd`
echo "Current Path: ${rootPath}"
if [ $1 ]
then
  rootPath=$1
  echo " Root path passed in $1 "
fi
rootPath="${rootPath}/capture"
echo "Root Path is: ${rootPath}"
mkdir "${rootPath}"
mkdir "${rootPath}/screen"
mkdir "${rootPath}/webcam"

while :; do
  dateStr="$(date +%y%m%d%H%M%S)"
  screencapture -x "${rootPath}/screen/screenshot-${dateStr}.jpg"
  wait $!
  imagesnap -q -w 0.5 "${rootPath}/webcam/webcam-${dateStr}.jpg"
  wait $!
  sleep 60
done

