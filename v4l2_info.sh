#!/bin/bash


echo V4L2-CTL Camera info script
echo ________________________________
echo **** Listing of all devices ****
v4l2-ctl --list-devices
echo ________________________________
echo Enter device path/file to test ex. /dev/video0
read cameraPath
echo \"v4l2-ctl --list-formats -d $cameraPath \"
v4l2-ctl --list-formats -d $cameraPath

echo ________________________________
echo Full format list
echo \"v4l2-ctl --list-formats-ext -d $cameraPath \"
v4l2-ctl --list-formats -d $cameraPath

echo ________________________________
echo All available info
echo \"v4l2-ctl --all \"
v4l2-ctl --all