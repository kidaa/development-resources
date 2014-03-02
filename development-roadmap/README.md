This is intended as a high-level overview of what we should do with Lilypond.

TODO How is this different from an issue tracker?

NOTE: this is a very chaotic dump right now, should improve in aaa few hours.

Benchmarks

GOP

GLISS

Any specific research about specific issues doesn't belong here.

This is in no way a concrete plan and there's no guarantee that we'll do this stuff in any order or deadline.

urs musicology roadmap (cannot find it at the moment.... Urs?)


Gsoc ideas page:
- grace notes
- ties
- slurs



david K email:



Bachelor: rewrite and benchmark skyline algorithms according to specs

          convert to GUILEv2 (that one's more like a term paper).

master: derive, prove and corrobate the asymptotic behavior of former

        refactor and create framework for outputs, adding XML output

        refactor page output, adding several examples for user-defined
        page layouts (with footnote layers suitable for critical typesetting)

        redesign and refactor engraver layers

Phd:    design optimization specification framework, migration strategy,
        bind page breaking into it, start migrating engravers

And quite a bit more.  There is always the diffuse

Bachelor:
        benchmark a whole lot and improve the hotspots until deadline
        approaches




### MusicXML

Add MusicXML export and improved import.
- Peter Bjuhr's already working on it
- integrating improvements from Philomelos

TODO: link to all musicXML-related notes, plans, resources etc. Or maybe they should
be placed in this repo?



### Music fonts:
- adding a framework for easy switching between various fonts, support Gonville
- making font weight independent from size
- adding variants of font glyphs
- clening up mf code
- parametrizing code so that other style glyphs could be easily produced from it (what i did with naturals)


### spacing
- area spacing
- magnetic spacing
- elastic placement
- lyrics
- default page margins&layout


### Improving partcombine

`\partcombine` is a very useful feature of LilyPond, but currectly it is severely
limited.  It would be good to:
* add built-in support for lyrics
* add support for combining more than 2 voices
* add support for partcombining staves (for example, if there's a very
  complicated passage being combined, temporary stave(s) should be added
  when necessary)


instruments:
- easier to construct \score blocks
- more standarized source structure
- simplifying orchestralLily
- helping Denemo support all lilypond files

frescobaldi graphical editing


### Multithreading

Make LilyPond take advantage of current multithreaded processors.  This will be
hard, as there are many interdependent things in LilyPond.  Mentoring
from one of the main authors (Han-Wen or Jan) may be necessary.

migrating to Guile

Perspectives (what lilypond can look like in 1, 3, 5 years):
