#!/bin/bash
mp3Path=$1

if [ -z "$mp3Path" ]
then
  ffmpeg -i ld40-screen-timelapse.mp4 -i ld40-webcam-timelapse.mp4 \
    -filter_complex "[1:v]scale=960:540[a]; \
    [0:v][a]overlay=x=W-w:y=H-h:enable=gte(t\,0):shortest=1[out]" \
    -map [out] \
    -c:v libx264 -crf 18 -pix_fmt yuv420p \
    combined.mp4
else

  echo "WITH AUDIO!!!"
  echo "MP3 Path: ${mp3Path}"
  ffmpeg -i ld40-screen-timelapse.mp4 -i ld40-webcam-timelapse.mp4 -i $mp3Path \
    -filter_complex "[1:v]scale=960:540[wc]; \
    [0:v][wc]overlay=x=W-w:y=H-h:enable=gte(t\,0):shortest=1[outv]" \
    -map [outv] -map 2:a \
    -c:v libx264 -crf 18 -pix_fmt yuv420p \
    combined.mp4

fi
