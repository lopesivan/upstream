#!/usr/bin/env bash

files=(
	wine64
	wineconsole
	wineg++
	wineserver
	wine64-preloader
	winecpp
	winegcc
	wineboot
	winedbg
	winemaker
	winebuild
	winedump
	winemine
	winecfg
	winefile
	winepath
)

for file in ${files[@]}; do

	if [ -f /usr/local/bin/$file ]; then
		echo "Removing /usr/local/bin/$file"
		rm -f /usr/local/bin/$file
	fi

	if [ -f /usr/bin/$file ]; then
		echo "Removing /usr/bin/$file"
		rm -f /usr/bin/$file
	fi
done

