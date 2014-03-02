This is intended as a high-level overview of what we should do with Lilypond.

TODO How is this different from an issue tracker?

NOTE: this is a very chaotic dump right now, should improve in aaa few hours.

TODO we should probably move here all stuff from http://lilypond.org/gsoc-2012.html.

Any specific research about specific issues doesn't belong here.

This is in no way a concrete plan and there's no guarantee that we'll do this stuff in any order or deadline.

urs musicology roadmap (cannot find it at the moment.... Urs?)


### Standarizing syntax

Also known as GLISS (Grand Lilypond Input Syntax Standarization).
Unfortunately, this project is not well-defined.


### Suggestions from David Kastrup's email:

#### Bachelor:

* rewrite and benchmark skyline algorithms according to specs

* convert to GUILEv2 (that one's more like a term paper).

#### Master:

* derive, prove and corrobate the asymptotic behavior of former

* refactor and create framework for outputs, adding XML output

* refactor page output, adding several examples for user-defined
  page layouts (with footnote layers suitable for critical typesetting)

* redesign and refactor engraver layers

#### Phd:    

* design optimization specification framework, migration strategy,
  bind page breaking into it, start migrating engravers

And quite a bit more.  There is always the diffuse

* benchmark a whole lot and improve the hotspots until deadline
  approaches


### MusicXML

Add MusicXML export and improved import.
- Peter Bjuhr's already working on it
- integrating improvements from Philomelos

TODO: link to all musicXML-related notes, plans, resources etc. Or maybe they should
be actually placed in this repo?



### Music fonts:
- adding a framework for easy switching between various fonts, support Gonville
- making font weight independent from size
- adding variants of font glyphs
- clening up mf code
- parametrizing code so that other style glyphs could be easily produced from it (what i did with naturals)


### Typesetting engine improvements

Here are some of 
They are mostly related to spacing.
- area spacing
- magnetic spacing
- elastic placement
- lyrics
- default page margins&layout


### Improving partcombine

`\partcombine` is a very useful feature of LilyPond, but currently it is severely
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


### GUI

LilyPond will continue to use plaintext file format, but it would be
good to have some graphical editing capabilities.  There are a few things
that can be done - some easy and obviously a good idea, some difficult:
* add support for graphical editing in frescobaldi (e.g. dragging a dynamic
  around with a mouse in the _music view_, shaping a slur by dragging its
  control-points, etc) - Peter Bjuhr had already started working on this.
* improving Denemo/Schikkers List/creating another GUI
* making MuseScore use LilyPond internally (that's just a very crazy idea
  from Janek)


### Multithreading

Make LilyPond take advantage of current multithreaded processors.  This will be
hard, as there are many interdependent things in LilyPond.  Mentoring
from one of the main authors (Han-Wen or Jan) may be necessary.

