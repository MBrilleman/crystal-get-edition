# CHANGELOG

Describes all the changes made.

## Small edits from deassembly's Wiki tutorial

Implemented most of the Tips and Tricks the original deassembly project's wiki tutorial provides.

[**FOUND HERE**](https://github.com/pret/pokecrystal/wiki/Tips-and-tricks)

Changes made:
- Sped up healing animation at Pokémon Center.
- Animate tiles even when textboxes are open.
- Make overworld sprites darker at night.
- Enemy trainers have maximum happiness for a powerful Return.
- Use original Cycling Road behavior (Holding A or B activates the brakes).
- Make Hidden Power always have 60 base power (type is still determined by the Pokémon DV's).

## Other small tweaks and changes

- Kurt now makes Apicornballs instantly.
- Low Health beeps stops after beeping four times.
- Infinitely reuseable TMs.

## Bug-Catching Contest can be done any day of the week

Removed all checks for the current date regarding the Bug-Catching Contest. So the contest is held and can be participated in regardless of the current day of the week, essentially running 24/7.


## Rival's Pokémon have held items

- Removed code that forbade the Rival having held items on their Pokémon.
- Gave the unevolved starter Pokémon on each Rival's team a BERRY (10 HP).
- Gave the evolved starter Pokémon on each Rival's team a GOLD BERRY (30 HP).
- Gave the Sneasel on each Rival's team a MIRACLE BERRY (Gen 2's Lum Berry).

## Removed sexism

In the Generation 2 Pokémon games, the attack stat was used to determine the Pokémons gender. This sadly resulted in female gendered Pokémon being generated with lower attack values then males. 

The code to determine a Pokémons gender was modified so that more stats are used to determine a Pokémons gender, also resulting in female gendered Pokémon being generated with equal stats as those of male gendered Pokémon.

## Added tradeback NPC

Added Samson Oak in Elm's Pokémon Lab. Trading a Pokémon to Samson Oak instantly trades back the same Pokémon back to you, triggering trade evolutions without having to connect to a second game.