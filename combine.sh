#!/bin/bash

ffmpeg -i ld40-screen-timelapse.mp4 -i ld40-webcam-timelapse.mp4 \
    -filter_complex "[1:v]scale=960:540[a]; \
    [0:v][a]overlay=x=W-w:y=H-h:enable=gte(t\,0):shortest=1[out]" \
    -map [out] \
    -c:v libx264 -crf 18 -pix_fmt yuv420p \
    combined.mp4
