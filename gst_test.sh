#!/bin/bash


echo Camera test script running running gst-launch-1.0
echo \"gst-launch-1.0 --gst-debug=4 imxv4l2videosrc input=0 device=$cameraPath ! video/x-raw,width=640,height=480,framerate=30/1 ! videoconvert ! v4l2sink device=$outputPath\"
echo Enter device path/file to test ex. /dev/video0
read cameraPath
echo Enter device path/file to output to ex. /dev/video17
read outputPath

gst-launch-1.0 --gst-debug=4 imxv4l2videosrc input=0 device=$cameraPath ! video/x-raw,width=640,height=480,framerate=30/1 ! videoconvert ! v4l2sink device=$outputPath