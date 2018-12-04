(*
	SCRIPT CREATED BY LUO YU, INDIE.LUO@GMAIL.COM
	THURSDAY, MAY 10, 2018
 *)

tell application "System Events"

	-- OPEN ITERMS
	keystroke space using {control down}

	-- WAIT FOR IT INITIALIZED
	delay 1

	-- CHANGE INPUT METHOD ENGLISH MODE
	--key down shift
	--key up shift

	-- SPLIT WINDOWS AS THREE COLUMNS
	keystroke "d" using {command down}
	keystroke "d" using {command down}

	-- RUN HTOP AT 3RD COLUMN
	keystroke "htop"
	keystroke return

	-- MOVE TO 2ND COLUMN
	keystroke "[" using {command down}

	-- SPLIT UP & DOWN
	keystroke "d" using {command down, shift down}

	-- RUN UPDATE COCOAPODS AND BREW LIBS SHELL SCRIPT
	keystroke "./updates.sh"
	keystroke return
	-- WAIT FOR IT RESPONSE
	delay 1

	-- MOVE UP
	keystroke "[" using {command down}
	-- MOVE TO GITHUB PROJECTS FOLDER AND LIST FILES
	keystroke "la && cd Project/GitHub && la"
	keystroke return

	-- MOVE TO 1ST COLUMN
	keystroke "[" using {command down}

	-- MOVE TO WORKING PROJECT FOLDER AND LIST ALL FILES WITH GIT STATUS
	keystroke "la && cd Project/com.company/workin_app && la && git status"
	keystroke return

	-- OPEN XCODE WORKSPACE
	keystroke "openws"
	keystroke return

	-- WAIT XCODE TO RESPONSE
	delay 3

	-- GO BACK TO ITERMS
	keystroke space using {control down}

end tell
