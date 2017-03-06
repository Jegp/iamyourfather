#### Language Processing 2 | Group 3
## *chomsky* TTS


##### TL; DR

	> ssh abc123@peter-server.com [...]
	$ git clone (this repo)
	$ cd iamyourfather/chomsky
	$ ./run.sh


##### Project structure

    .
    ├── cmu.txt             # Diphones and spoken phrases for each pair
    ├── dict.txt            # The diphone dict as described in the manual
    ├── jens.wav            # Diphone arriers
    ├── sotiris.wav         # Reference pronunciation
    ├── measure_pitch       # --------------
    ├── praat               # PROVIDED FILES
    ├── F0INT_LangProc2.psc # --------------
    └── README.md

##### Diphone dictionary

The diphone dictionary should specify the timepoints in the carrier file
that the appropriate diphones are located.

Example structure:

    <diphone>  <filename>   <onset>   <shift>   <offset>
     ay-t        jens.wav    1.33      1.43      1.68
     t-iy        jens.wav    2.53      2.63      2.88
     iy-ay       jens.wav    3.33      3.62      4.11
     ...
