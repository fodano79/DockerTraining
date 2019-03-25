############################################
# Ubuntu Xenial with ScummVM
# DockerFile Version: 1.0
############################################

# Base Image
FROM ubuntu:xenial

# Maintainer
LABEL Author="Francesco Sodano" \
    Version=1.0

# Environment Variables
ENV HOME=/home/developer UID=1000 GID=1000
ENV PULSE_SERVER /run/pulse/native

# Adding Features
RUN apt-get update && apt-get install -y -qq scummvm alsa-base alsa-utils alsa-oss pulseaudio && apt-get -y clean && rm -rf /var/lib/apt/lists/* && echo enable-shm=no >> /etc/pulse/client.conf

# Adding Content
ADD docker-entrypoint.sh /docker-entrypoint.sh

# Expose Ports and EntryPoint
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["scummvm"]
