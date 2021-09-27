FROM ubuntu:focal

RUN apt update -yqq
RUN apt install python3 python3-pip libsndfile1 -yqq

# install TTS (this downloads a lot, including pyTorch)
RUN python3 -m pip install -U TTS

# make a folder to output into
RUN mkdir /app

# load a model into this container we can use for future speech
# downloads the Tacotron 2 model trained with LJSpeech by default
RUN tts --text "Hello world." --out_path /app/hello-world.wav
