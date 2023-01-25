cd ./youtube-dl
ffmpeg -vcodec h264 -i ../vid.mp4 -vf "sobel=scale=0.2:delta=-70,sobel=scale=0.1:delta=0,colorbalance=gm=-1.0:gh=1.0,colorize=hue=220,colorbalance=bm=-1.0:bh=1.0,colorkey=black" -y ../vid_sobel.mp4
pause

ffmpeg -i output.mp4 -t 3:39 out2.mp4