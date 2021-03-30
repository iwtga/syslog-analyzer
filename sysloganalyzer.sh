#! /bin/bash

# Initializes the colors
function initialize_colors() {
	normal_color="\e[1;0m"
	green_color="\033[1;32m"
	green_color_title="\033[0;32m"
	red_color="\033[1;31m"
	red_color_slim="\033[0;031m"
	blue_color="\033[1;34m"
	cyan_color="\033[1;36m"
	brown_color="\033[0;33m"
	yellow_color="\033[1;33m"
	pink_color="\033[1;35m"
	white_color="\e[1;97m"
}

# Prints the intro
function print_intro() {
	clear
	echo -e "${red_color}           _______  _______  _______  _______  _______  _______  _______   _____  "
	sleep 0.15 && echo -e "          (  ____ \(  ____ )(  ____ )(  ___  )(  ____ )(  ____ \(  __   ) / ___ \ "
	sleep 0.15 && echo -e "          | (    \/| (    )|| (    )|| (   ) || (    )|| (    \/| (  )  |( (   ) )Presents"
	sleep 0.15 && echo -e "          | (__    | (____)|| (____)|| |   | || (____)|| (____  | | /   |( (___) |SysLog Analyzer"
	sleep 0.15 && echo -e "          |  __)   |     __)|     __)| |   | ||     __)(_____ \ | (/ /) | \____  |"
	sleep 0.15 && echo -e "          | (      | (\ (   | (\ (   | |   | || (\ (         ) )|   / | |      ) |Alan"
	sleep 0.15 && echo -e "          | (____/\| ) \ \__| ) \ \__| (___) || ) \ \__/\____) )|  (__) |/\____) )Irfan"
	sleep 0.15 && echo -e "          (_______/|/   \__/|/   \__/(_______)|/   \__/\______/ (_______)\______/ Lance${normal_color}"
	sleep 3
	clear
}

main () {
	initialize_colors
	print_intro
}

main