\header {
  title = "All for Jesus (arranged)"
  arranger = "Jay Thomas"
  subtitle = "Melody and words from John Stainer's \"The Crucifixion\""
  tagline = "Arranged for Tomahawk Baptist Church"
  copyright = "Public domain"
}

\version "2.19.82"
\include "english.ly"

chordas = \chordmode {
  \key g \major

  % 1
  c2:maj7 e:9 |
  g2.:9/f f4:maj7/g |
  c g:/b a2:m |
  g2:m7 g2:7 |
  % 5
  g4:7/f a:7/g d:m7/c d:m/b |
  d2:m/a d4:m d4:dim |
  c c:/g gs2:maj9 |
  d:dim c2 |

}

upper = \context Staff \relative c'\new Voice {
  \key c \major
  \time 4/4

  % 1
  <c e>4 g' <d f c'> b' |
  <b, d a'> <d g> <d g> <c f> |
  e <d g> c <c e> |
  <g bf d>4 c <g b d>2 |
  % 5
  <g b d>4 <a cs e> <a c d f> <d f a> |
  <f a d> <f c'> <f c'> <d f gs b> |
  <e g c> <c e g> <gs as c ds g> f' |
  <c e> b8 d <e, g c>2 |

}

lower = \context Staff \relative c \new Voice \repeat volta 2 {
  \clef "bass"
  \key c \major
  \time 4/4

  % 1
  <c e g b>2 <e gs b>2 |
  <f, f'> <f c'>4 <g g'> |
  <c c'> <b b'> <a a'> <a a'> |
  <g d' f>2 <g f'> |
  % 5
  <f f'>4 <g d' g> <c c'> <b b'> |
  <a a'>2 <d a'>4 <d gs b> |
  <c c'> <g g'> <gs c ds f>2 |
  <d' f gs a> <c, c'>
}

verse_one = \lyricmode {
  \set stanza = \markup { "1. " }
  All4 for Je -- sus!, all for Je -- sus!,
  This our song shall ev -- er be:2
  you4 our on -- ly hope, our Sa -- viour,
  yours the love that sets us free!
}

verse_two = \lyricmode {
  \set stanza = \markup { "2. " }
  All4 for Je -- sus: you will give us
  strength to serve you hour by hour;2
  none4 can move us from your presence
  while we trust your grace and power.
}

verse_three = \lyricmode {
  \set stanza = \markup { "3. " }
  All4 to Je -- sus I sur -- rend -- er,
  All to Him I free -- ly give;2
  I4 will e -- ver love and trust Him,
  In His pre -- sence dai -- ly live.
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \set majorSevenSymbol = \markup { maj7 }
      \set ChordNames.instrumentName = #"Chords"
      \set ChordNames.midiInstrument = #"reed organ"
      \set ChordNames.midiMaximumVolume = #0.5
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
