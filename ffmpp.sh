ffmpeg -f image2 -r 1/7 -i img%03d.png -vcodec libx264 out.mp4
ffmpeg -i caly.mp3 ffmusic.wav
ffmpeg -i ffmusic.wav -ss 0 -t 35 musicshort.wav
ffmpeg -i musicshort.wav -i out.mp4 -strict -2 final_video.mp4
