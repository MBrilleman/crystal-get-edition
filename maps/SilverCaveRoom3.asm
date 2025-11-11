	object_const_def
	const SILVERCAVEROOM3_RED

SilverCaveRoom3_MapScripts:
	def_scene_scripts

	def_callbacks

Ons:
	special FadeOutMusic
	faceplayer
	opentext
	writetext OnsSeenText
	waitbutton
	closetext
	winlosstext OnsWinText, OnsLossText
	loadtrainer RED, RED2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special FadeOutMusic
	opentext
	writetext OnsLeavesText
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear SILVERCAVEROOM3_RED
	pause 15
	special FadeInFromBlack
	pause 30
	special HealParty
	reanchormap
	credits
	end

OnsSeenText:
	text "Halloooooooooooooo"
	line "oooooooooooooootjes"

	para "Nou, daar zijn"
	line "jullie dan..."

	para "Eindelijk!"

	para "Kijk, ik snap het."
	line "Zo'n nuzlocke duurt"
	cont "gewoon lang..."

	cont "En al dat verlies"
	line "dat je onderweg"
	cont "leidt."

	cont "Ik vraag me af..."
	line "Op welke attempt"
	cont "zitten jullie nu?"

	cont "Wacht, zeg maar"
	line "niks."

	cont "Het maakt toch niet"
	line "meer uit."

	cont "..."

	cont "Dit is waar het"
	line "allemaal eindigt!"

	cont "..."

	cont "Jij..... of ik?"

	done

OnsWinText:
	text "Ja toch, kanker get"
	done

OnsLossText:
	text "GEN ONE? GEN WON!!"
	done

OnsLeavesText:
	text "Veel succes"
	line "met #MON"
	cont "Emerald!"
	done

SilverCaveRoom3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 33, SILVER_CAVE_ROOM_2, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 9, 10, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Ons, EVENT_RED_IN_MT_SILVER
