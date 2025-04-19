CheckSpecialPasswordUnlock::
	call .CheckRobPassword
	jr z, .setRobRivalNames ; If password matched, jump
	ret

.CheckRobPassword:	
	xor a
	ld [wScriptVar], a
	ld de, RobPassword
	ld hl, wGreensName ; check inputted password
	ld c, 3
	call CompareBytes
	ret nz
	ld a, 1
	ld [wScriptVar], a
	ret

.setRobRivalNames:
    ld a, $40               ; Load terminator
    ld bc, NAME_LENGTH    ; Set name length (usually 11 bytes)
    ld hl, wRedRivalName      ; Where the rival name is stored
    call ByteFill           ; Fill the rival name area with "@"
    
    ld hl, wRedRivalName      ; Destination
    ld de, RobRed  ; Source (where the name to copy is)
    call CopyName2          ; Copy name

    ld a, "@"               ; Load terminator
    ld bc, NAME_LENGTH      ; Set name length (usually 11 bytes)
    ld hl, wBlueRivalName     ; Where the rival name is stored
    call ByteFill           ; Fill the rival name area with "@"
    
    ld hl, wBlueRivalName     ; Destination
    ld de, RobBlue  ; Source (where the name to copy is)
    call CopyName2          ; Copy name    
    ret

RobRed:
    db "Rob@"

RobBlue:
    db "Marcten@"

RobPassword:
    db "ROB"

