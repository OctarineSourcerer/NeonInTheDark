// If only the Play font had something between regular and bold
// Another option would be PT, but cba to download it atm. Antic slab... Neuton... DM Serif Text... Quantico...
#let headingFont = "Bebas Neue"
#set document(title: "Neon In The Dark")
#set text(font: "Exo 2")
#show heading: set text(font: "Bebas Neue")
// This is a little awkward. I'd like to set the default heading size here, then override it in the Crews section, but as per https://github.com/typst/typst/issues/351... show/set rules don't override well
// #show heading.where(level: 1): set text(size: 30pt)
 #show heading.where(level: 2): set text(size: 25pt)
#show heading.where(level: 3): set text(size: 20pt)
#show heading.where(level: 4): set text(size: 15pt)

// Square Game would work for this as well
#align(center+horizon, text(font: "Orbitron", size: 40pt, weight: "bold")[
    NEON IN THE DARK
])
#align(center)[_A Blades In The Dark hack_]
#pagebreak()
// = Crews

#include "crews/boostergang.typ"