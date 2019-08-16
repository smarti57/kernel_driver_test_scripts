#!/bin/bash


echo Camera test script running running gst-launch-1.0
echo \"gst-launch-1.0  --gst-debug=4 imxv4l2videosrc device=/dev/video0 imx-capture-mode=3 num-additional-buffers=50 ! 'video/x-raw,width=640,height=480,framerate=(fraction)30/1' ! videoconvert ! autovideosink\"
echo Enter device path/file for input ex. /dev/video0
read cameraPath

gst-launch-1.0  --gst-debug=4 imxv4l2videosrc device=$cameraPath imx-capture-mode=3 num-additional-buffers=50 ! 'video/x-raw,width=640,height=480,framerate=(fraction)30/1' ! videoconvert  ! autovideosink