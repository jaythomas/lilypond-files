\header {
  title = "Son of Man"
  composer= "Perry Hays"
  subtitle = "Original manuscript draft, transcribed as written"
  tagline = ""
}

\version "2.19.83"
\include "english.ly"

global =  {
  \time 4/4
}

%%% Chords %%%
chordas = \chordmode {
  \set majorSevenSymbol = \markup { M7 }
  \set ChordNames.instrumentName = #"Chords"
  \set ChordNames.midiInstrument = #"pad 2 (warm)"
  \set ChordNames.midiMaximumVolume = #0
  \key c \major

  % 1
  c2.:maj7 g4:6
  a1:m7
  d2:m7 f:/g
  c1:maj7
  % 5
  bf:maj7
  af2:maj7 gf:maj7
  d:maj7
  g2.:13 g4:7
  c2.:maj7 g4:6
  % 10
  a1:m7
  d2:m7 d:m6
  bf2:maj7 g:sus4
  c2.:maj7 g4:6
  % 14
  a1:m7
  d2:m7 d:m6
  bf:maj7 d4:m7 f:/g
  % 17
  c1:maj7
  d2:m7 g:9
  c1:maj7
  ef2:maj7 bf4:/c c:7
  % 21
  f1:maj7
  bf2:maj7 c:7
  f1:maj7
  g2:sus4 g
  % 25
  c2.:maj7 g8:6 \parenthesize e:m7
  a1:m7
  d2:m7 d:m6
  % 28
  bf2:maj7 g4:7sus4 g:7
  c2.:maj7 g4:6
  a1:m7
  d2:m7 d:m6
  % 32
  bf2:maj7 d4:m7 g:7
  c1:maj7
  d2:m7 g:7
  c1
  % 36
  d2:m7 f/g
  c1:maj7
  bf:maj7
  fs:m7
  % 40
  b:13
  \skip 1
  e:maj7
  a:6sus2
  e:maj7
  a:6sus2
  % 46
  e:maj7
  a:6sus2
  e:maj7
  a:6sus2
  e:maj7
  % 51
  a:6sus2
  e:maj7
  a:6sus2
  fs:m7
  % 55
  b:7
  e:maj7
  a:sus2
  fs:m
  % 59
  b:7
  e
  g:6
  fs:7
  % 63
  f:maj7
  g:7
  c2.:maj7 g8:6 \parenthesize e:m7
  a1:m7
  % 67
  d2:m7 d:m6
  bf2:maj7 g4:7sus4 g:13.9-
  c2.:maj7 g8:6 \parenthesize e:m7
  a1:m7
  % 71
  d2:m7 d:m6
  bf2:maj7 d4:m7 f/g
  c1:maj7
  d2:maj7 g:7
  c1
  af
  f:m
  c:maj7
  bf:6
  ef:maj7
  af:maj7.5-
  c

}

%%% Melody %%%
melody = \relative c'' \new Voice {
  \set Staff.midiInstrument = #"flute"
  \set instrumentName = #"Melody"
  \numericTimeSignature
  \key c \major

  % 1
  s1
  s
  s
  s
  % 5
  s
  s2
  s1
  r1
  r4 b8 g e4 d' |
  % 10
  c2. e,8 a |
  f f f g d4 d8 e |
  f f f g d2 |
  r4 b'8 g e4 d'8( c) |
  % 14
  c2. e,8 a |
  f f f g d4 d8 e |
  f f f g a b c d |
  % 17
  e2. d8 e |
  f4 f8 e d c b d |
  g,2 r4 g8 g |
  d'4 d8 d f f e e |
  % 21
  c2. a8 c |
  d2 c4 bf8 bf |
  a8 c~ c4 r2 |
  r1 |
  % 25
  r4 b8 g e4 d'8 c |
  c2. e,8 a |
  f f f g d8 d d e |
  % 28
  f f f g d2 |
  r4 b'8 g e4 d'8 c |
  c2~ c8 e, d g |
  f f f g d4 d8 e |
  % 32
  f f f g a b c d |
  e2. d8 d |
  f4 f8 e d c b d |
  c2. r4 |
  % 36
  r1 |
  r
  r
  \key e \major r
  r
  % 41
  r
  s
  s
  s
  s
  gs8 a b4 b2~ |
  % 47
  b4 e cs a8 (b |
  b1) |
  r2. a8 a |
  gs b b4 b2~ |
  b4 e cs a8 (b |
  % 52
  b1) |
  r2. cs8 cs |
  <a cs fs a> <gs cs fs a> <fs cs' fs a>4 <fs cs' e gs> <e a cs fs> |
  % 55
  <b fs' a ds>1 |
  <e b' ds gs>8 <e b' ds gs> <e b' ds gs>4 <gs b e fs> <fs a cs e> |
  <<{<cs e>1} {<b' cs>2 a4 gs8 gs}>> |
  % 58
  fs8 fs a a cs cs e4 |
  r4 ds4 e fs |
  e2. e8 e |
  % 61
  <g, b d e>2. <g b d e>8 <g b d e> |
  <fs a cs e>2. <fs a cs e>8 <fs a cs e> |
  <<{<a c e>2 gs2} {f4 e ds cs}>> |
  \key c \major <b f' b d>2.\fermata r4
  % 65
  r4 b'8 g e4 d'8( c) |
  c2. e,8 a |
  f f f g d4 d8 e |
  f f f g d2 |
  r4 b'8 g e4 d'8( c) |
  c2. e,8 a |
  f f f g d4 d8 e |
  f f f g a b c d |
  e2. d8 e |
  f4 f8 e d c b d |
  c2 r4 c8 c |
  c2~ c8 r c c |
  c2~ c8 r c c |
  g'1~ |
  g~ |
  g~ |
  g |
  r

}

text = \lyricmode {

  % 1
  \skip 1
  \skip 1
  \skip 1
  \skip 1
  % 5
  \skip 1
  \skip 1
  \skip 2
  \skip 1
  \skip 4 You8 were sent4 for me2.
  to8 a sta -- ble far a -- way4
  in8 a man -- ger filled with hay.2
  \skip 4 You8 were sent4 to free2.
  all8 man -- kind from death and sin. \skip 8
  Son of God you were and would not turn a -- way.2.
  You8 would stay4 to8 ful -- fill your fa -- ther's plan2.
  but8 right now4 in8 that crib of hay you lie2.
  soon8 to be2 called4 son8 of man.2 \skip 2
  \skip 1
  % 25
  \skip 4 You8 were sent4 for me.2.
  In8 an un -- known child -- hood world
  your hu -- man des -- ti -- ny un -- furled.2
  \skip 4 All8 to soon4 you'll be2
  \skip 8 a8 sa -- cri -- fice for man -- kind's sins.4
  If8 you knew this all the while why did you stay?2.
  Of8 such love4 we8 just can -- not un -- der -- stand.2. \skip 4
  % 36
  \skip 1
  \skip 1
  \skip 1
  \skip 1
  % 40
  \skip 1
  \skip 1
  \skip 1
  \skip 1
  \skip 1
  \skip 1
  % 46
  Then8 the child4 grew2. in4 -- to a man.1
  \skip 2. Wal8 -- king Gal -- i -- -lee's4 shores,2. the4 great I Am.1
  \skip 2. Call8 -- ing com -- mon men4 from the sea.1
  Fish8 -- ing for4 you and me.2.
  Giv8 -- ing life to all who came to Him.4
  \skip 4 That was His plan.2.
  Son8 of man.2. Son8 of man.2. Son8 of man.1
  \skip 1
  \skip 4 You8 were sent4 for me2.
  to8 a cross out -- side the gates4 of8 a city4 filled8 with hate.2
  \skip 4 You8 were sent4 to free2.
  all8 man -- kind from death and sin4 son8 of God you did and did not turn a -- way.2.
  You8 did stay4 to8 com -- plete your Father's4 plan.2.
  Son8 of man.2. Son8 of man.2. Son8 of man1
  (man- - -).
  \skip 1

}

%%% Piano %%%
upper = \context Staff \relative c'\new Voice {
  \numericTimeSignature
  \key c \major
  % 1
  r4 \mf ^"[Intro.]" b8 g e4 <e b' d> |
  <e b' c>2. <a c e>8 g' |
  <<{<a, c>2\arpeggio} {f'8 f f g}>>  <c, f a>8\arpeggio b' <d, f a c>\arpeggio d' |
  <<{<g, b>2\arpeggio} {e'8 e e g e2}>> |
  % 5
  <<{<f, a>2} {d'8 d d f d2}>> |
  <<{<ef, g>2 <df f>} {c'8 c d c bf bf c bf}>> |
  <c, f a> g' <a, c f> c |
  <<{<f, b e>2 <f b d> ^"Rit." } {s8 g' g g s g g g}>> |
  r4 <b, e g>2 <g b d>4 |
  % 10
  r4 g8 c d c g c |
  r8 a c f r f, a d |
  r f, a d r <f, a c> r <e g b> |
  r4 <b' e g>2 <g b d>4 |
  % 14
  r4 g8 c e c g c |
  r8 a c f r f, a d |
  r f, a d r <f, a c> r <e g b> |
  % 17
  r4 <b' e g>2 <c e g>4 |
  <<{<a c f>2\arpeggio <f a>} {s2 d'8 e f g}>> |
  <<{<b, c e>2\arpeggio} {s8 g' e' b g'4~ g}>> |
  <g,, bf d>2 <bf d f> |
  % 21
  <<{<c e a>2} {s4 c'8 c a a e e}>> |
  r f, a d r f, bf e |
  r a, c e c' f, c a |
  r8 f c' e r ^"Rit." f, b e\fermata |
  % 25
  r4 <e g b>2\arpeggio <e g b d>4\arpeggio |
  r4 c'8 b a g e c |
  <<{d4. c8 b4. b8} {s8 <f' a>4. s8 <f a>4.}>> |
  % 28
  <<{<f, a d>4 <f a d> <f a c> s} {s2 d'16 e f g a b c d}>> |
  <g, b e>2\arpeggio <b e g>4\arpeggio <g b e>\arpeggio |
  <g b d>4 <a c> <g b> <a c> |
  e' d b f |
  % 32
  a f a g |
  <<{<e g>2\arpeggio s} {b'4 d b g}>> |
  <<{<f a>2 <d f g>} {c'4 b b a}>> |
  <g c e>2. g8 e |
  % 36
  <<{<a, c>2\arpeggio <c f>4\arpeggio <d f a>\arpeggio} {f8 f f g a b c d}>> |
  <<{<g, b>2\arpeggio s} {e'8 e e g e2}>> |
  <<{<f, a>2\arpeggio s} {d'8 d d f d2}>> |
  \key e \major <<{<fs, a>2 s} {cs'8 cs cs e cs4 a}>> |
  % 40
  <a, ds gs>4 <a ds fs> <<{<ds fs>2} {cs'8 c b4~}>> |
  <a, ds fs b>1 |
  <ds' fs gs b> |
  <cs e fs a> |
  <ds fs gs b> |
  <cs e fs a> |
  % 46
  <ds fs gs b> |
  <cs e fs a> |
  <ds fs gs b> |
  <cs e fs a> |
  <ds fs gs b> |
  % 51
  <cs e fs a> |
  <ds fs gs b> |
  <cs e fs a> |
  fs,,8 a cs e gs e cs a |
  % 55
  b' a gs fs e ds cs b |
  <ds' gs b>2 <b ds gs>4 <gs b ds> |
  <<{<b cs>2 a} {fs'4 e~ e2}>> |
  r8 fs,, a cs fs cs a fs |
  % 59
  r b fs' a ds a fs b, |
  r e gs b e b gs e |
  r g b d e d b g |
  r fs a cs e cs  a fs |
  % 63
  r f a c e c a f |
  \key c \major r f b e g4\fermata r |
  <e, g b d>2\arpeggio <e g b>4 <b e g> |
  <<{<g a c e>2} {b'8 a g e}>> g16 a b c d c d e |
  % 67
  <f, a e'>4\arpeggio~ <f a d> <d f a c>8~ <d f a b> a'4 |
  <d, f a c>\arpeggio <d f a> g8( f) a\fermata( f\fermata)
  <g' b d>4 <e g b> <b e g> <b e> |
  % 70
  <a c e> <c e a> <e a c> <e a c e> |
  \ottava #1 <d' f>8 <d g> <b d> <a c> <g b> <f a> <e g> <d f> |
  <<{<a d>4 <d, f a> <a' d f> s} {f'8 f f g <a c> b <b e> <d f>}>> |
  % 73
  <e, g b d>4 <e g a c> <c e g b>8~ <c e g a> <b d f a>~ <b d f g> |
  d8 e f g a b c d |
  <g, c e>2. <a c e>4\marcato |
  r8 <af c>16 <af c> <af c>8\marcato <af c>\marcato <af c>2 |
  % 77
  r8 <af c>16 <af c> <af c>8\marcato <af c>\marcato <af c>2 |
  a'16 g e g a g e g a g e g a g e g |
  a g f g a g f g a g f g a g f g
  % 80
  a g f ef c bf g f ef c ef f g f g bf |
  af8 bf c d f\fermata g af\fermata bf |
  <<{c1} {r8 <e, g>16 <e g> <e g>8\marcato <e g>\marcato <e g>2}>> \ottava #0 |

}

lower = \context Staff  \relative c' \new Voice {
  \numericTimeSignature
  \clef bass
  % 1
  c,8 g' g4 e, g |
  a2 a8 c~c4 |
  d2 g |
  <<{\acciaccatura{b8}c2} {\acciaccatura{b,8}c2 g8 g' c e}>> |
  % 5
  <bf, bf'>2 d8 f bf d |
  af2 gf |
  \time 2/4 d4 d |
  \time 4/4 g,2 g |
  g8 g'~ g2 <g, e'>4 |
  % 10
  a8 e'~ e2. |
  d2 b |
  bf <g d>4 <g d> |
  c8 g'~ g2. |
  % 14
  a,8 e'~ e2. |
  d2 b |
  bf <g d>4 <g d> |
  % 17
  c8 g'~ g2. |
  d2 g, |
  c1 |
  ef2 c |
  % 21
  f1 |
  bf,2 c |
  <f, f'>1 |
  d'2 af |
  % 25
  c8 g'8~ g4 e8 g,8~ g4 |
  a8 e'8~ e2. |
  d2 b |
  % 28
  bf g |
  g'4. r8 g4 b |
  <g a c>1 |
  <d f a c>2 <d f a b> |
  % 32
  <d f b> <d f a>4 <d f g b> |
  <c g'>1 |
  d2 g, |
  <c g'>2. g'8 e |
  % 36
  d2 g, |
  <<{\acciaccatura{c8}c2} {\acciaccatura{c'8}c2 r8 g c e}>> |
  <<{\acciaccatura{bf,8}bf2} {\acciaccatura{bf'8}bf2 r8 f bf d}>> |
  \key e \major fs,1 |
  % 40
  b,4 b b2 |
  b1 |
  <e, e'>4. <e e'>8 <e e'>4. <e e'>8 |
  <e e'>4. <e e'>8 <e e'>4. <e e'>8 |
  <e e'>4. <e e'>8 <e e'>4. <e e'>8 |
  <e e'>4. <e e'>8 <e e'>4. <e e'>8 |
  % 46
  <e e'>4. <e e'>8 <e e'>4. <e e'>8 |
  <e e'>4. <e e'>8 <e e'>4. <e e'>8 |
  <e e'>4. <e e'>8 <e e'>4. <e e'>8 |
  <e e'>4. <e e'>8 <e e'>4. <e e'>8 |
  <e e'>4. <e e'>8 <e e'>4. <e e'>8 |
  % 51
  <e e'>4. <e e'>8 <e e'>4. <e e'>8 |
  <e e'>4. <e e'>8 <e e'>4. <e e'>8 |
  <e e'>4. <e e'>8 <e e'>4. <e e'>8 |
  <fs fs'>2 <fs fs'> |
  % 55
  <b fs>2 <b fs> |
  e1
  a
  fs
  % 61
  b
  <e, e'>
  <g g'>
  <fs fs'>
  % 63
  <f f'>
  \key c \major <g g'>\fermata |
  <g' c>2\arpeggio <e g c>4 <c e> |
  <a a'>1 |
  % 67
  <d c'>2 a |
  <b b'> <g g'>\fermata |
  <c' g' c>2 <c g'>4 <c e g> |
  % 70
  <a, a'>1 |
  <d d'> |
  bf'4 b, d' g, |
  % 73
  c,2. g'4 |
  f8 g a b c d e f |
  <c e g>4. <g c e g>8 <c e g>4 <a c e g>8 r |
  <c ef af>2. <c ef af>8\marcato r |
  % 77
  <c f af>2. <c f af>8\marcato r |
  <c e g>1 |
  <bf, d f g> |
  % 80
  <bf ef g> |
  <af c d g>4. <af c d g>8 <af c d g>4 <af c d g>8 r |
  <c e g>1 |

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordas
    }
    \new Voice = "melody" {
      \set Voice.instrumentName = #"Voice"
      \autoBeamOff \melody
    }
    \new Lyrics = "text" \text
    \new PianoStaff <<
      \set PianoStaff.instrumentName = #"Piano"
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout {
    \context {
      \Score
        %\override SpacingSpanner #'spacing-increment = #1.5
    }
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 86 4)
    }
  }
}
