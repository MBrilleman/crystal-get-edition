# CHANGELOG

Describes all the changes made.

## Small edits from deassembly's Wiki tutorial

Implemented most of the changes the original deassembly project's wiki tutorial provides.

[**FOUND HERE**](https://github.com/pret/pokecrystal/wiki/Tutorials)

Changes made:
- Sped up healing animation at Pokémon Center.
- Animate tiles even when textboxes are open.
- Make overworld sprites darker at night.
- Enemy trainers have maximum happiness for a powerful Return.
- Use original Cycling Road behavior (Holding A or B activates the brakes).
- Make Hidden Power always have 60 base power (type is still determined by the Pokémon DV's).
- When a repel runs out, question is asked whether to use another one.
- Spore moves now don't affect grass types, ai is also updated to discourage spore moves on grass types.
- Field moves can be used by Pokémon that can learn the move but don't have the move learned, e.g. Surf or Cut. (Badges still required)
- Added running by holding 'B'.
- Tms now display names when buying or given to player.
- Added the PC as a key item so it is accessible from everywhere.
- Kurt now makes Apicornballs instantly.
- Low Health beeps stops after beeping four times.
- Infinitely reuseable TMs.
- Enemy trainers no longer have a 25% extra chance of missing their status moves.

## Other small tweaks and changes

- The Bug-catching contest is no longer restricted to Tuesdays, Thursdays and Saturdays. But is now instead held every day of the week.
- Monica (Sharp Beak gift giver) now spawns every day of the week, instead of only on Mondays.
- Arthur (Hard Stone gift giver) now spawns every day of the week, instead of only on Thursdays.


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