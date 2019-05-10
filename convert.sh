#!/bin/bash

dimension="1280:720"
bitrate="1000k"
bufsize="2000k"
fps="24000/1001"
audiohz=22050
crf="25"

# Two-pass ABR with VBV
#ffmpeg -i $1 -pass 1 -an -vf scale=$dimension -c:v libx264 \
#       -b:v $bitrate -maxrate:v $bitrate -bufsize:v $bufsize \
#       -vsync cfr -r $fps -y -f null - && \
#ffmpeg -i $1 -pass 2 -vf scale="$dimension" -c:v libx264 \
#       -b:v $bitrate -maxrate:v $bitrate -bufsize:v $bufsize \
#       -vsync cfr -r $fps -c:a copy $2 && \
#printf "\n\033[0;48;5;40;97m convert success !!\033[0m\n\n" && \
#exit 0;

# CRF with VBV
ffmpeg -i $1 -vf scale=$dimension -c:v libx264 \
       -crf $crf -maxrate:v $bitrate -bufsize:v $bufsize \
       -vsync cfr -r $fps -c:a copy $2 && \
printf "\n\033[0;48;5;40;97m convert success !!\033[0m\n\n" && \
exit 0;

# hevc 10bit
#ffmpeg -i  $i -c:v libx265 -pix_fmt yuv420p10le -c:a copy $2 && \
#printf "\n\033[0;48;5;40;97m convert success !!\033[0m\n\n" && \
#exit 0;

printf "\n\033[0;48;5;124;97m convert failure !!\033[0m\n\n" && \
exit 1;
