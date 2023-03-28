#!/bin/bash

color_text(){
	text=$1
	gum style --foreground "#f37467" "$text"
}

color_text_two(){
	text=$1
	gum style --foreground "#85e5ed" "$text"
}

color_bee(){
	text=$1
	gum style --foreground "#F9E57F" "$text"
}

function print_banner(){
	if [ -z "$BANNER_DISPLAYED" ]; then
		 
		
		echo "$(color_bee "      .' '.                          __ ")"
		echo "$(color_bee "	   . .        .   .         (__\_")"
		echo "$(color_bee "	        . .  .      .     .-{{_(|8)")"
		echo "$(color_bee "                ' .  . ' ' .  . '   (__/")"
echo "
$(color_bee "	>")$(color_text " stung@net")
$(color_bee "	>")$(color_text_two " https://github.com/0xlvl3")
"
		

		export BANNER_DISPLAYED=1
	fi
}

print_banner
