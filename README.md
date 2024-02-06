# Voice Interactive CLI with tgpt

This project is a bash script named `AIVoiceSearch.sh` for a command-line interface (CLI) that takes voice input from the user, processes it with Terminal GPT (tgpt), and then uses the Google Text-to-Speech (gTTS) module to provide the response in voice to the user.

## Features

- Voice input and output: The script records the user's voice, transcribes it, and then synthesizes the response into audio and plays it.
- Uses tgpt: The transcribed text is processed with tgpt to generate a response.
- Cross-platform: The script can be run on macOS, Windows, and Linux.
- Audio Playback: The script uses `mpv` to play the synthesized audio.

## Setup

### Prerequisites

- Python 3.11 or higher
- Bash
- ffmpeg
- Vosk
- tgpt
- gTTS
- mpv

### macOS

1. **Python**: Python comes pre-installed on macOS. You can check the version by typing `python --version` in your terminal. If you need to install or upgrade Python, you can do so from the official Python website.
2. **Bash**: Bash also comes pre-installed on macOS.
3. **ffmpeg**: Install ffmpeg using Homebrew. If you don't have Homebrew installed, you can install it from the Homebrew website, then run `brew install ffmpeg`.
4. **Vosk, tgpt, gTTS**: These can be installed using pip, the Python package installer. Run `pip install vosk tgpt gTTS`.
5. **mpv**: Install mpv using Homebrew by running `brew install mpv`.

### Windows

1. **Python**: You can download Python for Windows from the official Python website.
2. **Bash**: Git Bash is a good option for Windows users. You can download it from the Git SCM website.
3. **ffmpeg**: You can download ffmpeg for Windows from the official ffmpeg website. Add the bin folder to your system path.
4. **Vosk, tgpt, gTTS**: These can be installed using pip, the Python package installer. Run `pip install vosk tgpt gTTS`.
5. **mpv**: You can download mpv for Windows from the official mpv website.

### Windows (with Scoop)

1. **Python**: You can install Python using Scoop by running `scoop install python`.
2. **Bash**: Git Bash can be installed using Scoop by running `scoop install git`.
3. **ffmpeg**: Install ffmpeg using Scoop by running `scoop install ffmpeg`.
4. **Vosk, tgpt, gTTS**: These can be installed using pip, the Python package installer. Run `pip install vosk tgpt gTTS`.
5. **mpv**: Install mpv using Scoop by running `scoop install mpv`.

### Windows (with Chocolatey)

1. **Python**: You can install Python using Chocolatey by running `choco install python`.
2. **Bash**: Git Bash can be installed using Chocolatey by running `choco install git`.
3. **ffmpeg**: Install ffmpeg using Chocolatey by running `choco install ffmpeg`.
4. **Vosk, tgpt, gTTS**: These can be installed using pip, the Python package installer. Run `pip install vosk tgpt gTTS`.
5. **mpv**: Install mpv using Chocolatey by running `choco install mpv`.

### Linux

1. **Python**: Most Linux distributions come with Python pre-installed. You can check the version by typing `python --version` in your terminal. If you need to install or upgrade Python, use your distribution's package manager.
2. **Bash**: Bash comes pre-installed on most Linux distributions.
3. **ffmpeg**: Install ffmpeg using your distribution's package manager. For example, on Ubuntu, you would run `sudo apt install ffmpeg`.
4. **Vosk, tgpt, gTTS**: These can be installed using pip, the Python package installer. Run `pip install vosk tgpt gTTS`.
5. **mpv**: Install mpv using your distribution's package manager. For example, on Ubuntu, you would run `sudo apt install mpv`.

## Usage

To run the script, use the following command in your terminal:

```bash
bash AIVoiceSearch.sh
```
