# mozilla-tts-runner
Simple docker based runner for Mozilla's most excellent TTS

## build container

```
docker build -t tts:0.3.1 .

```

## use container

```
docker run -it --rm -v $(pwd):/app tts:0.3.1 tts --text "Some text to output." --out_path "/app/some-text-to-output.wav"

```
or simply run `run.sh` like so
```
./run.sh "Some text to output." some-text-to-output.wav

```
which will create a file called `some-text-to-output.wav` in the directory you run this from.
