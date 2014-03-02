\markup "if you move a stem, the flag attached to it follows it:"
{
  \override Stem #'X-offset = #3
  c'8
}

\markup "i think that if you move a notehead, the stem attached to i should follow it as well, but it doesn't:"
{
  \override NoteHead #'X-offset = #3
  c'8
}