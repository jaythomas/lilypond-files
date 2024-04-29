\version "2.24.3"
\include "english.ly"

\header {
  title = "Ancient of Days, Who Sittest Throned in Glory"
  pdftitle = "Ancient of Days, Who Sittest Throned in Glory (1886)"
  subtitle = "Pilgrim 1935 Hymnal, #21"
  poet = "William C. Doane, 1886, 1892"
  composer = \markup \right-column {
    "J. Albert Jeffery, 1886"
    \smallCaps "Ancient of Days: 11. 10. 11. 10."
  }
  meter = \markup { \small {
    \italic "tempo: 62"
  } }
  tagline = ##f
  copyright = "Public domain"
  author = "Jay Thomas"
}

chordas = \chordmode {
  \key c \major

  % 1
  c4 g:dim7 g2:7 |
  c2 g:7 |
  c4 a:m e:m a:m |
  g/d d:13 g2 |
  % 5
  a4:m/g a/g d2:m |
  e2 a:m | 
  f4 gs:7 c2/e |
  g2:7 c |
  % AMEN
  f c |
}

upper = \context Staff \relative c'\new Voice {
  \key c \major
  \numericTimeSignature % show 4/4 instead of common time "C"
  \time 4/4

  % 1
  <e g>4 <e g>8. <e g>16 <f g>4. <f a>8 |
  <e g>8 <e c'> <g b> e8 <f a>4 <f g> | \break
  <e g>4 <e a>8. <e a>16 <e b'>4 <e c'> |
  <g d'>8 <g b> <fs b>8. <fs a>16 g2 | \break
  % 5
  <e a>4 <e a>8. <e a>16 <d d'>4. <d a'>8 |
  <e a>8 <e gs> <e a> <e b'> <e d'>4 <e c'> | \break
  <f c'>4 <fs c'>8. <fs c'>16 <g c>8 g e g |
  <f g>4 <f d'> <e c'>2 \bar "."
  % AMEN
  <f c'> <e c'> \bar "|."
}

lower = \context Staff \relative c \new Voice \repeat volta 2 {
  \clef "bass"
  \key c \major
  \time 4/4

  % 1
  <c g'>4 <cs a'>8. <cs as'>16 <d b'>4. <g, b'>8 |
  <c c'>8 <c c'> <e c'> <g c> <g b>4 <g b> |
  <c, c'>4 <c a'>8. <c a'>16 <b g'>4 <a a'> |
  <d b'>8 <d d'> <d d'>8. <d c'>16 <g b>2 |
  % 5
  <g c>4 <g cs>8. <g cs>16 <f a>4. <f a>8 |
  <e b'>8 <e b'> <fs b> <gs b> <gs b>4 a |
  <a c>4 <af c>8. <af c>16 <g  e'>8 g e g |
  <g b>4 <g b> <c, c'>2 |
  % AMEN
  <f a>2 <c g'> |
}

verse_one = \lyricmode {
  \set stanza = \markup { "1. " }
  An4 -- cient8. of16 Days,4. who8
  sit8 -- test throned in glo4 -- ry,
  To4 Thee8. all16 knees4 are
  bent,8 all voi8. -- ces16 pray;2
  Thy4 love8. has16 blessed4. the8
  wide8 world's won -- drous sto4 -- ry
  With light8. and16 life8 since E -- den's
  dawn4 -- ing day.2 A -- \markup { \smallCaps "men." }
}

verse_two = \lyricmode {
  \set stanza = \markup { "2. " }
  O4 Ho8. -- ly16 Fa4. -- ther,8
  who8 hast led Thy chil4 -- dren.
  In4 all8. the16 a4 -- ges,
  with8 the fire8. and16 cloud,2
  Through4 seas8. dry16 -- shod,4. through8
  wea -- ry wastes be -- wil4 -- dering;
  To4 Thee,8. in16 rev8 -- erent love, our
  hearts4 are bowed.2
}

verse_three = \lyricmode {
  \set stanza = \markup { "3. " }
  O4 Ho8. -- ly16 Je4. -- sus,8
  Prince8 of Peace and Sav4 -- iour,
  To Thee8. we16 owe4 the
  peace8 that still8. pre16 -- vails,2
  Still4 -- ing8. the16 rude4. wills8
  of8 men's wild be -- hav4 -- ior,
  And4 calm8. -- ing16 pas8 -- sion's fierce and
  storm4 -- y gales.2
}

verse_four = \lyricmode {
  \set stanza = \markup { "4. " }
  O4 Ho8. -- ly16 Ghost,4. the8
  Lord8 and the Life Giv4 -- er,
  Thine is8. the16 quick4 -- ening
  power8 that gives8. in16 -- crease;2
  From4 Thee8. have16 flowed,4. as8
  from a pleas -- ant riv4 -- er,
  Our plen8. -- ty16 wealth,8 pros -- per -- i --
  ty,4 and4 peace.
}

verse_five = \lyricmode {
  \set stanza = \markup { "5. " }
  O4 Tri8. -- une16 God,4. with8
  heart and voice a -- dor4 -- ing,
  Praise we8. the16 good4 -- ness
  that8 doth crown8. our16 days;2
  Pray4 we8. that16 Thou4. wilt8
  hear us, still im -- plor4 -- ing
  Thy love8. and16 fa8 -- vor kept to
  us4 al -- ways.2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \set majorSevenSymbol = \markup { maj7 }
      \set ChordNames.instrumentName = #"Chords"
      \set ChordNames.midiInstrument = #"reed organ"
      % Change value below to #0.6 to enable chord voicing
      \set ChordNames.midiMaximumVolume = #0.0
      \chordas
    }
    \new PianoStaff <<
      \set PianoStaff.midiInstrument = #"acoustic grand"
      \new Staff = "upper" \upper
      \new Lyrics = "verse_one" \verse_one
      \new Lyrics = "verse_two" \verse_two
      \new Lyrics = "verse_three" \verse_three
      \new Lyrics = "verse_four" \verse_four
      \new Lyrics = "verse_five" \verse_five
      \new Staff = "lower" \lower
    >>
  >>
  \layout {
    indent = 0\in
  }
  \midi {}
}
