This is intended as a high-level overview of what we should do with Lilypond.
As opposed to the issue tracker, which lists specific problems/todos,
this list should contain only coherent, big (and hopefully well-defined) "projects".
Any specific research about specific issues doesn't belong here.

This is in no way a concrete plan of work, we don't know when we'll tackle these
issues.


TODO we should probably move here all stuff from http://lilypond.org/gsoc-2012.html.

TODO: add Urs' "musicology roadmap", currently a `.tex` document in
[this repository](https://github.com/openlilylib/misc/tree/master/musicology-roadmap)


### Suggestions from David Kastrup's email:

TODO: distribute these among categories below.

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


Internal improvements
---------------------

These projects are about improving the source code itself - making it
more robust, modular, maintainable, efficient etc.

### Multithreading

Make LilyPond take advantage of current multithreaded processors.  This will be
hard, as there are many interdependent things in LilyPond.  Mentoring
from one of the main authors (Han-Wen or Jan) may be necessary.


Features/Bugs
-------------

These projects are about what is possible to do with LilyPond.


### MusicXML

Add MusicXML export and improved import.
- Peter Bjuhr's already working on it
- integrating improvements from Philomelos

TODO: link to all musicXML-related notes, plans, resources etc. Or maybe they should
be actually placed in this repo?


### Music fonts:
- adding a framework for easy switching between various fonts, support Gonville
- making font weight independent from size
- adding variants of font glyphs (on-line and on-space, shortened, narrowed)
- clening up mf code
- parametrizing code so that one can easily produce a differently styled
  font from it (example: what i did with naturals, commit 166d6eab595)


### Typesetting engine improvements

Here are some of the most important and prominent (i.e. affecting a lot
of scores and requiring significant amount of manual adjustments to fix)
issues related to how the output looks like.  
They are mostly related to spacing.
- area spacing
- magnetic skylines
- elastic dynamic/text placement
- lyrics alignment and other stuff, most notably issue 2456
- tie formatting (Janek researched this for a long time and he hopes
  to add his results to this repo)

### Improving partcombine

`\partcombine` is a very useful feature of LilyPond, but currently it is severely
limited.  It would be good to:
* add built-in support for lyrics
* add support for combining more than 2 voices
* add support for partcombining staves (for example, if there's a very
  complicated passage being combined, temporary stave(s) should be added
  when necessary)



LilyPond interfaces
-------------------

These projects are about how users interact with LilyPond.


### Instrument templates

Writing notes ("musical content") in LilyPond is pretty straightforward
and anyone can learn it in half an hour.  But specifying the structure
of the music (i.e. writing \score block, defining staves, voices, etc.)
is quite difficult and requires significant expertise.

One way of making this simpler for the users is by providing ready-to-use
building blocks (an additional level of abstraction).  It seems that
creating more custom contexts with some kind of a hierarchy could be a
good thing.

- develop further Janek's [predefined instruments]
(https://github.com/openlilylib/snippets/tree/master/templates/predefined-instruments)
- this should allow for more standarized structure of lily sources
- orchestralLily could serve as an inspiration
- this may be a step towards Denemo supporting all lilypond files
  (not just the ones that created by itself)


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


### Standarizing syntax

Also known as GLISS (Grand Lilypond Input Syntax Standarization).
Unfortunately, this project is not well-defined.
