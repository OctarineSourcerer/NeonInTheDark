// TODO: Ensure the headings order is correct
#let specialAbility(
    name: [New Ability],
    description: none,
    clarification: none,
    headingFont: "Bebas Neue"
) = block(breakable: false, width: 100%)[
    #set par(justify: true)

    #block(below: 0.8em, 
        text(font: headingFont, size: 17pt, name))
    #description
    // Figure out last line justifying left without all this hyphenating?

    #align(center, box(
        width: 92%,
        align(left, text(style: "italic", clarification)),
    ))
]
#let crew(
    name: [New Crew],
    shortDescriptor: none,
    description: none,
    xpEarn: none,
    questionToPlayers: none,
    startingUpgrades: none,
    expertise: none,
    contacts: none,
    upgrades: none,
    claims: none,
    specials: none
) = [
    #show <blockheader>: set block(
          fill: luma(230),
          inset: 5pt,
          width: 100%)
    #set grid(gutter: 2em)

    #block(below:1em, text(size: 4em)[= #name])
    #smallcaps(text(style:"italic", shortDescriptor))

    #description

    *#xpEarn*
    
    _ #questionToPlayers _
    
    #grid(
        columns: (60%, 40%),
        rows: 1,
        grid(columns: 1, rows: 2, gutter:2em, [
            ==== Starting Upgrades <blockheader>
            #startingUpgrades
        ],
        [
            ==== Operational Expertise <blockheader>
            Choose a favoured operation type:
            #expertise
        ]),
        [
            ==== Contacts <blockheader>
            #contacts
        ],
    )

    == #name Upgrades
    #upgrades
    
    // See about ensuring this is on a separate page without manual pagebreaks
    == #name Claims
    // Oh man I wish I could equalise the columns a little easier than just giving a height here
    // https://github.com/typst/typst/issues/466
    #box(height: 50%,
        columns(2, claims))
    
    == #name Special Abilities
    // Special abiities are laid out a little differently
    #specials
]