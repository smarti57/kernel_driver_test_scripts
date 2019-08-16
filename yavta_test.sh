#!/bin/bash

echo Yavta Camera test script
echo \"Simliar to yavta /dev/video0 -c30 -n4 -s640x480 -fYUYV -Ftest.raw\"
echo Enter device path/file to test ex. /dev/video0
read cameraPath
echo Enter file path/file to output to ex. test.raw
read outputPath
 

yavta $cameraPath -c30 -n4 -s640x480 -fYUYV -F$outputPath