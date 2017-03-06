; This file contains control information
; for synthesizing a sentence.
(voice_chomsky_dk_v01_diphone)
(set! utt1 (Utterance Segments (
  ; phrase: I am your father
  ; (phone duration (0 pitch))
  (pau 0.1 (0 110))
  (ay 0.1 (0 110))
  (ae 0.1 (0 110))
  (m 0.1 (0 110))
  (y 0.1 (0 110))
  (ao 0.1 (0 110))
  (r 0.1 (0 110))
  (f 0.1 (0 110))
  (aa 0.1 (0 110))
  (dh 0.1 (0 110))
  (er 0.1 (0 110))
  (pau 0.1 (0 110))
)))
(utt.synth utt1)
(utt.save.wave utt1 "./phrase.wav")
