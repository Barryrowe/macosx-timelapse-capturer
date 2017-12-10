
frameRate=16

ffmpeg -framerate ${frameRate} -pattern_type glob -i 'capture/screen/*.png' -c:v libx264 -pix_fmt yuv420p screen-timelapse.mp4


ffmpeg -framerate ${frameRate} -pattern_type glob -i 'capture/webcam/*.jpg' -c:v libx264 -pix_fmt yuv420p webcam-timelapse.mp4
