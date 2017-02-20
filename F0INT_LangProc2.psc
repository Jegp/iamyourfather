form input
    sentence inputfile
    sentence outputdir
endform

  	fileName$ = inputfile$

  	Read two Sounds from stereo file... 'inputfile$'

	noprogress To Pitch (ac)... 0.005 65 15 yes 0.03 0.45 0.01 0.4 0.14 600
	Write to text file... 'fileName$'_PtR.dat
	Remove

  	Read two Sounds from stereo file... 'inputfile$'
	noprogress To Intensity... 75 0.005 yes
	Write to text file... 'fileName$'_INT.dat
