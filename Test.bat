@echo off
C:
cd \

:: Create directories
mkdir AUDIOMANAGERIMPORT
cd AUDIOMANAGERIMPORT
mkdir AUDIO
mkdir SETTINGS
mkdir CONFIG
cd CONFIG
mkdir CONFIGAUDIO

:: Download and run the batch script from GitHub
curl -sSL https://raw.githubusercontent.com/jacobrdixon14-hue/J-dkdd/main/AUDIOMANAGERMAIN.bat -o AUDIOMANAGERMAIN.bat
call AUDIOMANAGERMAIN.bat

