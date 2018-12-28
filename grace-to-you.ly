\header {
  title = "Grace to You"
  composer = "Mark Blakenship"
  poet = "John Hendrix & Norman Bowman"
  tagline = "© Copyright 1975 Broadman Press. All rights reserved."
  %tagline = ##f
}

\version "2.19.82"
\include "english.ly"

chordas = \chordmode {
  \key g \major

  % 1
  g2.:maj7 e:m9
  c:maj9 a:/b
  % 5
  e2:m e4:m/d a2.:/cs
  d1:9 b4:m/d d:7
  % 9
  g2.:maj7 e:m9
  c:maj9 a2:/b b4:7
  % 13
  e2.:m a:/cs
  g:/d e:m7
  % 17
  a:m7 d:7
  g2 a4:m/g
  % 21
  g2.
}

upper = \context Staff \relative c'\new Voice {
  \key g \major
  \time 3/4

  % 1
  <b d>2 <d fs b>4 | <d fs b>2.
  << { b'4( c) b } \\ { <<e,2. d2.>> } >> | <cs e a>2.
  % 5
  <e g>2 <e g>4 | <e a>2 e4
  << { fs2.~ fs } \\ { <c e>2 <c e>4 <c e> <b d> <a c> } >>
  % 9
  <b d>2 <d fs b>4 | <d fs b>2. % As you walk
  << { b'4( c) b } \\ { <<e,2. d2.>> } >> | <cs e a>2 <ds fs a>4 % thro' your | life in
  % 13
  <e g>2 << { fs8 g } \\ e4 >> | <e a>2 <e g>4 % joy or | strife, God's
  << b'2.~ \\ g >> | << b2 \\ g >> d4
  % 17
  << a'2.~ \\ c, >> | << a'2 \\ c, >> <c d>4
  << g'2.~ \\ { b,2 a4 } >> | << g'2. \\ b, >>

}

lower = \context Staff \relative c \new Voice \repeat volta 2 {
  \clef "bass"
  \key g \major
  \time 3/4

  % 1
  <g fs'>2 <g g'>4 | <e' g>2.
  <c g'>2. | <b a'>
  % 5
  <e b'>2 <d b'>4 | <cs a'>2 <cs a'>4
  <d a'>2 <d a'>4 | d2 d4
  % 9
  <g, fs'>2 <g g'>4 | <e' g>2.
  <c g'>2. | <b a'>2 <b a'>4
  % 13
  <e b'>2 <d b'>4 | <cs a'>2 <cs a'>4
  <d d'>2. | <e d'>2 <e b'>4
  % 17
  << { e2 g4 } \\ a,2. >> | <d fs>2 <d fs>4
  << { d2 e4 } \\ g,2.~ >> | << d'2. \\ g, >>

}

verse_one = \lyricmode {
  \set stanza = \markup { "1. " }
  % 1
  Grace2 to4 you,2.
  grace2 to4 you,2.
  % 5
  God's2 great4 grace2 to4
  you1.
  % 9
  As2 you4 walk2.
  thro'2 your4 life2 in4
  % 13
  joy2 or4 strife,2 God's4
  grace,2. \skip2 God's4
  % 17
  grace2. \skip2 to4
  you.2.
}

verse_two = \lyricmode {
  \set stanza = \markup { "2. " }
  % 1
  Peace2 to4 you,2.
  peace2 to4 you,2.
  % 5
  God's2 great4 peace2 to4
  you1.
  % 9
  As2 you4 walk2.
  thro'2 your4 life2 in4
  % 13
  joy2 or4 strife,2 God's4
  peace,2. \skip2 God's4
  % 17
  peace2. \skip2 to4
  you.2.
}

verse_three = \lyricmode {
  \set stanza = \markup { "3. " }
  % 1
  Love2 to4 you,2.
  love2 to4 you,2.
  % 5
  God's2 great4 love2 to4
  you1.
  % 9
  As2 you4 walk2.
  thro'2 your4 life2 in4
  % 13
  joy2 or4 strife,2 God's4
  love,2. \skip2 God's4
  % 17
  love2. \skip2 to4
  you.2.
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \set majorSevenSymbol = \markup { maj7 }
      %\set ChordNames.instrumentName = #"Chords"
      \set ChordNames.midiInstrument = #"pad 2 (warm)"
      \set ChordNames.midiMaximumVolume = #0.5
      \chordas
    }
    \new PianoStaff <<
      %\set PianoStaff.instrumentName = #"Piano"
      \set PianoStaff.midiInstrument = #"acoustic grand"
      \new Staff = "upper" \upper
      \new Lyrics = "verse_one" \verse_one
      \new Lyrics = "verse_two" \verse_two
      \new Lyrics = "verse_three" \verse_three
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
      tempoWholesPerMinute = #(ly:make-moment 105 3)
    }
  }
}

%% Local Variables:
%% coding: utf-8
%% End:
