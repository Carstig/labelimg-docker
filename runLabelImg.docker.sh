#!/bin/bash
docker run -it \
--user $(id -u) \
-e DISPLAY=unix$DISPLAY \
--workdir=/home/docker/labelImg \
--volume="/home/$USER:/home/$USER" \
--volume="/etc/group:/etc/group:ro" \
--volume="/etc/passwd:/etc/passwd:ro" \
--volume="/etc/shadow:/etc/shadow:ro" \
--volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
-v /tmp/.X11-unix:/tmp/.X11-unix \
carstig/labelimg /bin/bash