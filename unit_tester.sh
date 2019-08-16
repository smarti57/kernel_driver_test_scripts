#!/bin/bash

echo Unit Test Camera test script
echo \"/unit_tests/V4L2/mxc_v4l2_capture.out -iw 640 -ih 480 -ow 640 -oh 480 -m 0 -r 0 -c 1 -fr 30 -d /dev/video0 test.yuv\"
echo Enter device path/file to test ex. /dev/video0
read cameraPath
echo Enter file path/file to output to ex. test.raw
read outputPath
 

/unit_tests/V4L2/mxc_v4l2_capture.out -iw 640 -ih 480 -ow 640 -oh 480 -m 0 -r 0 -c 1 -fr 30 -d $cameraPath $outputPath