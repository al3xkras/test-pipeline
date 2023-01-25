cd ./youtube-dl
ffmpeg -noautorotate  -i "../vid.wmv" -q:v 1 -q:a 1 "../vid.mp4"
pause