#!/bin/bash

docker build -t optee .

docker run -ti --rm \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.x11-unix:/tmp/.x11-unix \
  -v /etc/passwd:/etc/passwd \
  -v /etc/group:/etc/group \
  -v /home/ubuntu:/home/ubuntu \
  -u $(id -u ubuntu) \
	optee

