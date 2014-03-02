This is intended as a high-level overview of what we should do with Lilypond.

Any specific research about specific issues doesn't belong here.

This is in no way a concrete plan and there's no guarantee that we'll do this stuff in any order or deadline.

urs musicology roadmap (cannot find it at the moment.... Urs?)

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




MusicXML export and improved import
- Peter Bjuhr's already working on it
- integrating improvements from Philomelos


Gsoc ideas page:
- grace notes
- ties
- slurs

font:
- making font weight independent from size
- adding variants of font glyphs
- clening up mf code
- parametrizing code so that other style glyphs could be easily produced from it (what i did with naturals)

lyrics

spacing
- area spacing
- magnetic spacing

elastic placement

default page margins&layout

partcombine

instruments:
- easier to construct \score blocks
- more standarized source structure
- simplifying orchestralLily
- helping Denemo support all lilypond files

musicxml export, better import

frescobaldi graphical editing

multithreading

migrating to Guile

Perspectives (what lilypond can look like in 1, 3, 5 years):
