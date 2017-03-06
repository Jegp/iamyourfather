#!/bin/bash
function exit_if_error {
	# Check the exit status of the previous function,
	# if it is not zero then just exit.
	if [$? -ne 0 ]
	then
		echo "An error has occured, exiting..."
	fi
}

export ESTDIR=/usr
export PATH=$PATH:.

mkdir -p {bin,dic,festvox,group,lpc,pm,wav}

echo "Performing pitch analysis..."
./bin/make_pm_wave wav/*.wav
exit_if_error

echo "Contents of pm/:"
ls -lsh pm/

echo "Performing LPC analysis..."
./bin/make_lpc wav/*.wav
exit_if_error

echo "Contents of pm/:"
ls -lsh lpc/

echo "Compiling TTS (group files)..."
./make_grp
exit_if_error

echo "Synthesizing phrase..."
festival -b phrase.scm
exit_if_error

echo "Done!"
