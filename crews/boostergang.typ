#import "../templates/crewTemplate.typ": crew, specialAbility

#crew(
    name: [Boostergang],
    shortDescriptor: [MERCENARIES AND THUGS],

    description: [Some crews plot, some crews scheme, some crews sneak around in the darkness. It makes sense, Neo-Duskvol is a dangerous place. However, to hell with that. You fight. Violence and any monetisations of it are your game. You carry out destructive heists, extortion, hit jobs, anything where hardware is worth its weight in platinum.],

    xpEarn: [
        When you play a Boostergang, you earn XP when you execute a successful battle, extortion, smash & grab, or sabotage jobs
    ],
    questionToPlayers: [Are you brutal thugs, savvy mercs, or ruthless gangsters?],
    startingUpgrades: [
        / Training: Prowess
        / Cohort: Gang (Thugs)
    ],
    contacts: [
        / Hugo: A ripperdoc
        / Pascal: A police detective
        / Yu: A bar owner
        / Keitaro Imahara: A corpo
        / Zed: A cyberware dealer
        / Gunkin' Ste: A mechanic
    ],
    expertise: [
        / Battle: defeat an enemy
        / Extortion: threaten violence unless you're paid
        / Smash & Grab: fast and violent armed robbery
        / Sabotage: hurt an opponent by destroying something
    ],
    upgrades: [
        / Boostergang Rigging: You get 2 free load worth of weapon or armor items. _For example, you could carry a sword & pistol, or wear armor for 0 load._
        / Prison Contacts: Your tier is effectively +1 higher in prison. _This counts for any Tier-related element in prison, including the incarceration roll._
        / Elite Movers: All of your cohorts with the Movers type get +1d to quality rolls for Rover-related actions.
        / Elite Thugs: All of your cohorts with the Thugs type get +1d to quality rolls for Thug-related actions.
        / Hardened: Each PC gets +1 trauma box. This costs three upgrades to unlock, not just one. _This may bring a PC with 4 trauma back into play if you wish._
    ],

    claims: [
        / Barracks: Your Thug cohorts get +1 scale. Extra room means more gang members.
        / Fighting Pits: During downtime, roll dice equal to your Tier. You earn credit equal to the highest result, minus your heat. The locals love to gamble away their hard-earned cash on the bloodsports you host
        / Infirmary: You get +1d to healing treatment rolls. The infirmary also has beds for long-term convalescence.
        / Informants: You get +1d to gather information for a Run. Your eyes and ears on the streets are always on the lookout for new targets.
        / Police Confederates: You get +1d to the engagement roll for assault plans. The street patrol around here helps you out now.
        / Police Intimidation: You get -2 heat per Run. The law doesn't want any trouble from you; they look the other way.
        / Protection Racket: Any time during downtime, roll dice equal to your Tier. You earn credit equal to the highest result, minus your heat. Some of the locals are terrified of you and will gladly pay for “protection.”
        / Street Fence: You get +2 credit in your payoff for Runs that involve lower-class targets. An expert can find the treasure amid the trash you loot from your poorer victims.
        / Terrorized Citizens: You get +2 credit in your payoff for Runs that involve battle or extortion. The frightened locals offer you tribute whenever you lash out. They don't want to be next.
        / Warehouses: You get +1d to acquire asset rolls. You have space to hold all the various spoils you end up with after your battles. It can be useful on its own or for barter when you need it.
    ],

    // These get given special treatment as there are THREE aspects to each special ability.
    specials: [
        #specialAbility(name: "Dangerous",
            description: [
                Each PC may add +1 action rating to Trace, Scrap, or Scramble (up to a max rating of 3).
            ],
            clarification: [
                Each player may choose the action they prefer (you don't all have to choose the same one). If you take this ability during initial character and crew creation, it supersedes the normal starting limit for action ratings.
            ])

        #specialAbility(name: "Blood Brothers",
            description: [
                When you fight alongside your cohorts in combat, they get +1d for teamwork rolls (setup and group actions). All of your cohorts get the Thugs type for free (if they're already Thugs, add another type).
            ],
            clarification: [
                If you have the Elite Thugs upgrade, it stacks with this ability. So, if you had an Adepts gang cohort, and the Elite Thugs upgrade, and then took Blood Brothers, your Adepts would add the Thugs type and also get +1d to rolls when they did Thug-type actions. This ability may result in a gang with three types, surpassing the normal limit of two.
            ])

        #specialAbility(name: "Door Kickers",
            description: [
                When you execute an assault plan, take +1d to the engagement roll. 
            ],
            clarification: [
                This ability applies when the goal is to attack an enemy. It doesn't apply to other operations you attempt that happen to involve fighting.    
            ])

        #specialAbility(name: "Fiends",
            description: [
                Fear is as good as respect. You may count each wanted level as if it were turf. 
            ],
            clarification: [
               The maximum wanted level is 4. Regardless of how much turf you hold (from this ability or otherwise) the minimum rep cost to advance your Tier is always 6.     
            ])

        #specialAbility(name: "Forged in the Fire",
            description: [
                Each PC has been toughened by cruel experience. You get +1d to resistance rolls. 
            ],
            clarification: [
                This ability applies to PCs in the crew. It doesn't confer any special toughness to your cohorts.
            ])

        #specialAbility(name: "Patron",
            description: [
                When you advance your Tier, it costs half the credit it normally would. 
            ],
            clarification: [
                Who is your patron? Why do they help you?
            ])

        #specialAbility(name: "War Dogs",
            description: [
                When you're at war (-3 faction status), your crew does not suffer -1 hold and PCs still get two downtime activities, instead of just one.
            ])
    ]
)