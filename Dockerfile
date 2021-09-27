FROM ubuntu:focal

RUN apt update -yqq
RUN apt install python3 python3-pip -yqq
RUN python3 -m pip install -U TTS
RUN mkdir /app
RUN apt install libsndfile1 -yqq
RUN tts --text "Hello world." --out_path /app/hello-world.wav
