docker build -t ffmpeg-container .

To run docker image with specific entrypoint and in interactive mode, with image
docker run -it --entrypoint /bin/bash ffmpeg-container

OR

run docker image in interactive mode and start an interactive shell with /bin/sh shell inside the container
docker run -it ffmpeg-container /bin/sh

To run docker image and keep it open by running
docker run -it ffmpeg-container

Some example commands to run once container is open

1. Copy local file to Docker container - do not run in container
   docker cp /path/to/local/video.mp4 <container_id>:/app/video.mp4
   docker cp /Users/mbrennan/Desktop/Videos/Orbital-Reef-Intro-Video.mp4 peaceful_hugle:/app/video.mp4

2. Convert video to different format
   ffmpeg -i video.mp4 video.avi

3. Extract frames from video at specific time stamps(0,50 and 100s) and save them as PNG images
   ffmpeg -i video.mp4 -vf "select='eq(n,0)+eq(n,50)+eq(n,100)'" -vsync vfr %03d.png

4.Trim the video to specific duration
ffmpeg -i video.mp4 -ss 00:01:30 -t 00:00:30 trimmed.mp4

5. Next steps: Stream video to vlc player
   Requires vlc libaray

6. Next steps: Play video to browser (requires nginx configuration)
