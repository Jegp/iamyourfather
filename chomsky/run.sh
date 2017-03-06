#!/bin/bash
export ESTDIR=/usr
export PATH=$PATH:.

mkdir -p {bin,dic,festvox,group,lpc,pm,wav}

echo "Performing pitch analysis..."
./bin/make_pm_wave wav/*.wav
if [ $? -ne 0 ];	then
	echo "An error has occured, exiting..."; exit; fi

echo "Contents of pm/:"
ls -lsh pm/

echo "Performing LPC analysis..."
./bin/make_lpc wav/*.wav
if [ $? -ne 0 ];	then
	echo "An error has occured, exiting..."; exit; fi

echo "Contents of pm/:"
ls -lsh lpc/

echo "Compiling TTS (group files)..."
./make_grp
if [ $? -ne 0 ];	then
	echo "An error has occured, exiting..."; exit; fi

echo "Synthesizing phrase..."
festival -b phrase.scm
if [ $? -ne 0 ];	then
	echo "An error has occured, exiting..."; exit; fi

echo "Done!"
