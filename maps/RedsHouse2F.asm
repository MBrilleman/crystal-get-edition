RedsHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks

RedsHouse2FN64Script:
	jumptext RedsHouse2FN64Text

RedsHouse2FPCScript:
	jumptext RedsHouse2FPCText

RedsHouse2FN64Text:
	text "<PLAYER> played the"
	line "N64."

	para "Better get going--"
	line "no time to lose!"
	done

RedsHouse2FPCText:
	text "It looks like it"
	line "hasn't been used"
	cont "in a long time…"
	done

Red:
	checkevent EVENT_BEAT_BLUE
	iftrue .FightTime
	opentext
	writetext RedNotReady
	waitbutton
	closetext
	end
.FightTime:
	faceplayer
	special FadeOutMusic
	pause 15
	opentext
	writetext RedReady
	waitbutton
	closetext
	winlosstext RedWinText, RedLossText
	loadtrainer RED, RED1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special FadeOutMusic
	opentext
	writetext RedReady
	waitbutton
	closetext
	end

RedNotReady:
	text "He's ignoring me..."
	done

RedReady:
	text "<……>"
	line "<……>"
	done

RedWinText:
	text "…"
	done

RedLossText:
    text "..."
    done

RedsHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  0, REDS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  3,  5, BGEVENT_READ, RedsHouse2FN64Script
	bg_event  0,  1, BGEVENT_READ, RedsHouse2FPCScript

	def_object_events
    object_event  5,  3, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Red, -1
