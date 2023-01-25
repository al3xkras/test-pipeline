ffmpeg -i vid.mp4 -t 20 -filter_complex "[0:v]trim=0:4.2,setpts=0.1667*PTS-STARTPTS[v1]; [0:v]trim=4.2,setpts=0.1667*PTS-STARTPTS[v2]; [0:a]atrim=0:4.2,asetpts=0.1667*PTS-STARTPTS[a1]; [0:a]atrim=4.2,asetpts=PTS-STARTPTS,atempo=6[a2]; [v1][a1][v2][a2]concat=n=2:v=1:a=1" -preset superfast -profile:v baseline -y output.mp4
pause

ffmpeg -i vid.mp4 -t 20 -vf "setpts=0.1667*PTS-STARTPTS" -preset superfast -profile:v baseline -y output.mp4

