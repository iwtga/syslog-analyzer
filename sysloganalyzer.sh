#! /bin/bash
# Copyright © 2020-2021 eRroR509 (Alan, Irfan, Lance)

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
	sleep 2
	clear
}

# Print Header
function print_header() {
	clear
	echo -e "${green_color_title}***************************** Syslog Analyzer - Main Main ******************************${normal_color}"
	sleep 0.15 && echo -e "${yellow_color} Copyright © 2020-2021 eRroR509 (Alan, Irfan, Lance)${normal_color}"
	sleep 0.15 && echo -e "\n"

}

# Print Options
function print_options() {
	sleep 0.15 && echo -e "${green_color}Select an option from menu:${normal_color}"
	sleep 0.15 && echo -e "${blue_color}---------${normal_color}"
	sleep 0.15 && echo -e "0. Exit script"
	sleep 0.15 && echo -e "1. Open Realtime Authentication log"
	sleep 0.15 && echo -e "2. Open Realtime System Log"
	sleep 0.15 && echo -e "${blue_color}---------${normal_color}"
	sleep 0.15 && echo -e "3. About & Credits"
	sleep 0.15 && echo -e "${blue_color}---------${normal_color}"
	read -rp "> " option_selected

}

# Checks if the script is running as root user
function check_root_user() {
	if [ "$EUID" -ne 0 ]
  	then
	  	print_header
		echo -e "${red_color}Script Not Running as root!!..............Run again as root!\n"
  		exit
	fi
}

# Exit Script
function exit_script() {
	echo -e "\n${red_color}Exiting Script!....................${normal_color}\n"
	exit
}

# Auth Log Monitor
function auth_log_monitor() {
	echo "${red_color}Opening Auth-Log Realtime Monitor${normal_color}"
	xterm -e tail -f /var/log/auth.log
}

# System Log Monitor
function sys_log_monitor() {
	echo "${red_color}Opening Realtime System Log Monitor${normal_color}"
	xterm -e tail -f /var/log/syslog
}

# Invalid Option Selected
function invalid_option() {
	echo -e "${red_color}Invalid Option! Try Again!....................${normal_color}"
}

# Main Case
function main_case() {
	case "$option_selected" in
		0)
			exit_script
			;;
		1)
			auth_log_monitor
			;;
		2)
			sys_log_monitor
			;;
		3)
			about_credits
			;;	
		*)
			invalid_option
			;;
	esac		

}

# About & Credits
function about_credits() {
	clear
	echo -e "${green_color_title}***************************** Syslog Analyzer - About & Credits ******************************${normal_color}"
	sleep 0.15 && echo -e "${yellow_color} Copyright © 2020-2021 eRroR509 (Alan, Irfan, Lance)${normal_color}"
	sleep 0.15 && echo -e "\n"
	sleep 0.15 && echo -e "${red_color}           _______  _______  _______  _______  _______  _______  _______   _____  "
	sleep 0.15 && echo -e "          (  ____ \(  ____ )(  ____ )(  ___  )(  ____ )(  ____ \(  __   ) / ___ \ "
	sleep 0.15 && echo -e "          | (    \/| (    )|| (    )|| (   ) || (    )|| (    \/| (  )  |( (   ) )Presents"
	sleep 0.15 && echo -e "          | (__    | (____)|| (____)|| |   | || (____)|| (____  | | /   |( (___) |SysLog Analyzer"
	sleep 0.15 && echo -e "          |  __)   |     __)|     __)| |   | ||     __)(_____ \ | (/ /) | \____  |"
	sleep 0.15 && echo -e "          | (      | (\ (   | (\ (   | |   | || (\ (         ) )|   / | |      ) |Alan"
	sleep 0.15 && echo -e "          | (____/\| ) \ \__| ) \ \__| (___) || ) \ \__/\____) )|  (__) |/\____) )Irfan"
	sleep 0.15 && echo -e "          (_______/|/   \__/|/   \__/(_______)|/   \__/\______/ (_______)\______/ Lance${normal_color}"
	sleep 0.15 && echo -e "\n"
	sleep 0.15 && echo -e "${blue_color}This script was developed as part of OS project for SEM 4 by Team eRroR 509 (Alan, Irfan, Lance)${normal_color}"
	sleep 0.15 && echo -e "${blue_color}---------${normal_color}"
	sleep 0.15 && echo -e "${pink_color}Contact us:${normal_color}\n"
	sleep 0.15 && echo -e "${green_color}Alan${normal_color} https://github.com/iwtga"
	sleep 0.15 && echo -e "${green_color}Irfan${normal_color} https://github.com/Irfan7014"
	sleep 0.15 && echo -e "${green_color}Lance${normal_color} https://github.com/SoaresLance10"
	sleep 0.15 && echo -e "\nPress [Enter] key to continue..."
	read escape
}


# Main Menu
function main_menu() {
	while true
	do
		print_header
		print_options
		main_case
	done	
}

# Main
main () {
	initialize_colors
	print_intro
	check_root_user
	main_menu
}

main