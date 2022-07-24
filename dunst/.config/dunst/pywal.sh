#!/usr/bin/env bash

# Color files
PFILE="$HOME/.config/dunst/dunstrc"

# Get colors
pywal_get() {
	wal -i "$1" -q -t
}

# Change colors
change_color() {
	# polybar
	sed -i -e "s/frame_color = .*/frame_color = \"$AC\"/g" $PFILE
	sed -i -e "s/foreground = .*/foreground = \"$BGA\"/g" $PFILE
	sed -i -e "s/background = .*/background = \"$BG\"/g" $PFILE
	

}

# Main
if [[ -f "/usr/bin/wal" ]]; then

		# Source the pywal color file
		. "$HOME/.cache/wal/colors.sh"

		BG=`printf "%s\n" "$background"`
		FG=`printf "%s\n" "$background"`
		BGA=`printf "%s\n" "$color7"`
		FGA=`printf "%s\n" "$color7"`
		AC=`printf "%s\n" "$color1"`

		change_color
else
	echo "[!] 'pywal' is not installed."
fi
