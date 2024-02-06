#!/bin/bash

synthesize_audio(){

    # Write the transcribed text to a temporary file
    echo "${1}" > transcribed_text.txt

    C:/'Program Files'/Python311/python.exe - <<EOF
from gtts import gTTS
import os

# Read the transcribed text from the temporary file
with open('transcribed_text.txt', 'r') as file:
    text_to_speak = file.read().strip()

 
language = "en"

# Create the gTTS object
tts = gTTS(text=text_to_speak, lang=language, slow=False)

# Save the audio file
try:
    tts.save("output.mp3")
    print("Audio file saved successfully")
except Exception as e:
    print("Error saving audio file:", e)

# Play the audio file using mpv
try:
    os.system("mpv.com output.mp3")
except Exception as e:
    print("Error playing audio file:", e)
EOF

# Remove the temporary file
rm transcribed_text.txt
}

format_song_name() {
  echo "${1// /+}"
}

transcribe_and_play() {
  # Set the path to the Vosk model
  VOSK_MODEL_PATH="C:/Users/hp/Downloads/speechmodels/vosk-model-small-en-in-0.4"

  # Set the audio device name
  AUDIO_DEVICE="Microphone Array (Realtek(R) Audio)"

  # Create the "output" directory if it doesn't exist
  mkdir -p output

  # Create the "input" directory if it doesn't exist
  mkdir -p input

  # Record audio and save to a temporary WAV file
  ffmpeg -y -f dshow -i audio="$AUDIO_DEVICE" -acodec pcm_s16le -ac 1 -ar 44100 -t 10 -f wav ./input/tmp.wav

  # Transcribe the audio using Vosk
  vosk-transcriber -m "$VOSK_MODEL_PATH" -i ./input/tmp.wav -o ./output/transcribed_text.txt

  # Read the transcribed text from the output file
  read -r transcribed_text < ./output/transcribed_text.txt

  # Replace spaces with '+' in the transcribed text
  formatted_text="$(format_song_name "$transcribed_text")"
  tgpt -q -w "$formatted_text" | tr -d '\n' > AIOUT.txt

  # Read the output from tgpt
  read -r synthesized_result < AIOUT.txt

  # Print the synthesized result
  echo
  echo "$synthesized_result"
  echo

  # Synthesize the result into audio and play it
  synthesize_audio "$synthesized_result"
}

# Execute the main function
transcribe_and_play
