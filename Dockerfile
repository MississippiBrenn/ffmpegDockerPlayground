FROM alpine:3

# Update packages and install ffmpeg
RUN apk update && \
    apk add --no-cache ffmpeg

# Set the working directory
WORKDIR /app

# Start a long-running process to keep the container running
CMD tail -f /dev/null