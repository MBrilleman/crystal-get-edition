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
- When a repel runs out, the player is asked whether to use another one.
- Spore based moves now don't affect grass types, e.g Sleep powder or Poison powder. Updated NPC AI to discourage using spore moves on grass types.
- Field moves can be used by Pokémon that can learn the move but don't have the move learned, e.g. Surf or Cut. (Badges still required)
- Added running by holding 'B'.
- Tms now display names when buying or given to player.
- Kurt now makes Apicornballs instantly.
- Low Health beeps stop after beeping four times.
- Infinitely reuseable TMs.
- Enemy trainers no longer have a 25% extra chance of missing their status moves.
- Exp share similar to gen 6, also given by Oak in mr pokemons house. Replaced lotery reward and red scale reward to lucky egg.
- Added batle autoprompt.
- Added the naming sequence of the rival during intro screen
- Resetting time can be done on the main screen using down + B

## Bug-catching contest

Removed all checks for the current day of the week regarding the Bug-catching contest.\
It is no longer restricted to Tuesdays, Thursdays and Saturdays.\
The contest can now be participated in every day of the week, essentially running 24/7.

## Week Siblings

Removed all checks for the current day of the week regarding the week siblings.\
Each day of the week, Monday through Sunday, one of seven siblings would spawn in diffrent locations around Johto. Giving out type-enhancing held items.\
All seven of them now spawn every day of the week (Their spawn locations remain unchanged).\
Removed all mentions of weekdays in their text. Instead they make jokes and puns about days.


## Rival's Pokémon have held items

- Removed code that forbade the Rival having held items on their Pokémon.
- Gave the unevolved starter Pokémon on each Rival's team a BERRY (10 HP).
- Gave the evolved starter Pokémon on each Rival's team a GOLD BERRY (30 HP).
- Gave the Sneasel on each Rival's team a MIRACLE BERRY (Gen 2's Lum Berry).

## Removed sexism

In the Generation 2 Pokémon games, the attack stat was used to determine the Pokémons gender. This sadly resulted in female gendered Pokémon being generated with lower attack values than males.\
The code to determine a Pokémons gender was modified so that more stats are used to determine a Pokémons gender, also resulting in female gendered Pokémon being generated with equal stats as those of male gendered Pokémon.

## Added tradeback NPC

Added Samson Oak in Elm's Pokémon Lab. Trading a Pokémon to Samson Oak instantly trades back the same Pokémon back to you, triggering trade evolutions without having to connect to a second game.

## Pocket PC and Move Reminder

Added the Pocket PC as a Key Item. The player recieves the Pocket PC from Prof. Elm's aide after selecting their starter Pokémon.\
The Pocket PC is usable from anywhere in the world from the Key-items bag to access their PC.\
\
Added an extra option to the PC and Pocket PC that functions as a Move Reminder.\
The Move Reminder can teach a Pokémon any move that a species is able to learn by leveling up.\
The Move Reminder is free of charge.\


## Bug fixes

- Fixed Rival1 (Early game rival) having higher stats on their Pokémon than Rival2 (Late game rival)
- Fixed Dragon Scale getting the Dragon type-enhancing effect instead of the Dragon Fang. Now both held items give the power boost. 
- Burn, Poison and Paralysis now effect the catch rate of wild Pokémon as intended.
- The Apicorn balls (Moon Ball, Love Ball, Fast Ball, Heavy Ball) now all work as intended. 
- The speed stat reduction from Paralysis and the attack stat reduction from Burned now get properly applied to Pokémon that switch in with those status conditions.
- Glacier Badge stat boost now always properly applies. 
- Fixed a bug where the NPC AI looked at the wrong Pokémon when deciding to use Mean Look or not. 
- Added Solarbeam, Flame Wheel and Moonlight to the list of moves the NPC AI is encouraged to use if it knows Sunny Day.
- Fixed the NPC AI trying (and failing) to use another Future Sight move when a previous one is still in effect. 
- NPC AI using a Full Heal on their Pokémon now also restores the Confused and Nightmare status effects. 
- Fixed a bug where wild Pokémon that used the move Teleport with a significantly lower level than your Pokémon ran away instead of the Teleport move failing. 
- Fixed a bug where failing to hit the move Beat Up sometimes caused using the move Substitute to fail. 
- Sped up the slow HP bar depletion when a Pokémon with high HP is hit by a strong move. 
- Fixed an audio bug in the Slot Machines where the payout sound effects cut each other off. 
- Added the Team Rocket encounter theme to Rocket Excecutives and Rocket Scientists.