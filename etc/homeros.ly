%% The Homeros startup melody
%% Michael Pozhidaev <msp@luwrain.org>

\version "2.12.2"

right = {
  \time 2/4
  \key e \major
  \clef treble 

  \tempo 4 = 90
  a''8. \ff \sustainOn a''16 \f \tempo 4 = 100 a''16( gis''16 fis''16 e''16)~ \ff
  \tempo 4 = 100
  e''2 
  \tempo 4 = 100
  <gis' gis''>16 \fp <fis' fis''>16 <dis' dis''>8 <gis gis'>4
  \tempo 4 = 90
  <cis cis'>2~ \p \sustainOff
  <cis cis'>2~
  <cis cis'>2
}

left = {
  \key e \major
  \time 2/4
  \clef bass

  r4 \pppp \sustainOn <a, cis e>4~
  <a, cis e>2 \sustainOff
  fis,2( \sustainOff \sustainOn 
  <cis,, cis,>2~ \p \sustainOff
  <cis,, cis,>2~
  <cis,, cis,>2
}

\score {
  \unfoldRepeats {
    \new PianoStaff <<
      \set PianoStaff.instrumentName = "piano"
      \new Staff = "upper" \right 
      \new Staff = "lower" \left
    >>
  }
  \midi { }
}

