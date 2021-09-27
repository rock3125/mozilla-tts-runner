#!/bin/bash

IMAGE_NAME=tts:0.3.1

# docker build -t $IMAGE_NAME .

if [ $# -ne 2 ]; then
  printf "takes two arguments: \"text to speak\" file-name.wav (without path)\n"
  exit 1
fi

docker run -it --rm -v $(pwd):/app $IMAGE_NAME tts --text "$1" --out_path "/app/$2"
