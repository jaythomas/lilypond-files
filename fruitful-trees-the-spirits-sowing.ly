\header {
  title = "Fruitful Trees, the Spirit's Sowing"
  composer = "Ralph C. Schultz, b. 1932"
  poet = "Timothy Dudley-Smith, b. 1926"
  tagline = "Text © Copyright 1984 Hope Publishing Co. \n Tune © 1980 Concordia Publishing House"
}

\version "2.19.82"
\include "english.ly"

chordas = \chordmode {
  \key g \major

  % 1
  c1 |
  g2.:9/f f4:/g |
  c g:/b a2:m |
  g4:sus2 d:m7 g2 |
  % 5
  g4:7 a:7/g d:m a:m/c |
  d:m/b f2 d4:dim |
  c c:/g e:m/g g:sus |
  c:/g g:7 c2 |

}

upper = \context Staff \relative c'\new Voice {
  \key c \major
  \time 4/4

  % 1
  <c e>4 <c e g> <e g c> <e b'> |
  <f a> <d g> <d g> f |
  e <d g> c <c e> |
  <b d>4 c <b d>2 |
  % 5
  <c d>4 <a cs e> <a d f> <c e a> |
  <f a d> <f c'> <f c'> <d f b> |
  <e g c> <c e g> <b e g> <c f> |
  <c e> <b d> <e, g c>2 |

}

lower = \context Staff \relative c \new Voice \repeat volta 2 {
  \clef "bass"
  \key c \major
  \time 4/4

  % 1
  <c g'>4 <c g'> <c g'> <e c'> |
  <f c'> <f c'> <g c> <g, g'> |
  <c c'> <b b'> <a a'> <a a'> |
  <d a'>4 <d a'> <g, g'>2 |
  % 5
  <g f'>4 <g d' g> <f f'> <e e'> |
  <b' b'> <a a'> <d a'> <d gs b> |
  <c c'> <g g'> <g g'> <g g'> |
  <g f'> <g f'> <c e>2

}

verse_one = \lyricmode {
  \set stanza = \markup { "1. " }
  % 1
  Fruit4 -- ful trees, the Spir -- it’s sow -- ing,
  May we rip -- en and in -- crease,2
  Fruit4 to life e -- ter -- nal grow -- ing,
  Rich in love and joy and peace.
}

verse_two = \lyricmode {
  \set stanza = \markup { "2. " }
  % 1
  La4 -- den bran -- ches free -- ly bear -- ing
  Gifts the Giv -- er loves to bless;2
  Here4 is fruit that grows by shar -- ing,
  Pa -- tience, kind -- ness, gen -- tle -- ness.
}

verse_three = \lyricmode {
  \set stanza = \markup { "3. " }
  % 1
  Roo4 -- ted deep in Christ, our Mas -- ter,
  Christ, our pa -- ttern and our goal,2
  Teach4 us, as the years fly fas -- ter,
  Good -- ness, faith, and self control.
}

verse_four = \lyricmode {
  \set stanza = \markup { "4. " }
  %1
  Fruit4 -- ful trees, the Spir -- it’s tend -- ing,
  May we grow till har -- vests cease;2
  Till4 we taste, in life un -- en -- ding,
  Hea -- ven’s love and joy and peace.
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \set majorSevenSymbol = \markup { maj7 }
      \set ChordNames.instrumentName = #"Chords"
      \set ChordNames.midiInstrument = #"reed organ"
      \set ChordNames.midiMaximumVolume = #0
      \chordas
    }
    \new PianoStaff <<
      %\set PianoStaff.instrumentName = #"Piano"
      \set PianoStaff.midiInstrument = #"acoustic grand"
      \set PianoStaff.midiMaximumVolume = #0.9
      \new Staff = "upper" \upper
      \new Lyrics = "verse_one" \verse_one
      \new Lyrics = "verse_two" \verse_two
      \new Lyrics = "verse_three" \verse_three
      \new Lyrics = "verse_four" \verse_four
      \new Staff = "lower" \lower
    >>
  >>
  \layout {
    indent = 0\in
    \context {
      \Score
        %\override SpacingSpanner #'spacing-increment = #2
    }
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 96 4)
    }
  }
}

%% Local Variables:
%% coding: utf-8
%% End:
