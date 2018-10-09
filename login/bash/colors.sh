#!/usr/bin/env bash

# Reset
Color_Off="\[\033[m\]"     # Text Reset

# Regular Colors
Black="\[\033[30m\]"       # Black
Red="\[\033[31m\]"         # Red
Green="\[\033[32m\]"       # Green
Yellow="\[\033[33m\]"      # Yellow
Blue="\[\033[34m\]"        # Blue
Purple="\[\033[35m\]"      # Purple
Cyan="\[\033[36m\]"        # Cyan
White="\[\033[37m\]"       # White

# Bold
BBlack="\[\033[30m\]"      # Black
BRed="\[\033[31m\]"        # Red
BGreen="\[\033[32m\]"      # Green
BYellow="\[\033[33m\]"     # Yellow
BBlue="\[\033[34m\]"       # Blue
BPurple="\[\033[35m\]"     # Purple
BCyan="\[\033[36m\]"       # Cyan
BWhite="\[\033[37m\]"      # White

# Underline
UBlack="\[\033[30m\]"      # Black
URed="\[\033[31m\]"        # Red
UGreen="\[\033[32m\]"      # Green
UYellow="\[\033[33m\]"     # Yellow
UBlue="\[\033[34m\]"       # Blue
UPurple="\[\033[35m\]"     # Purple
UCyan="\[\033[36m\]"       # Cyan
UWhite="\[\033[37m\]"      # White

# Background
On_Black="\[\033[40m\]"    # Black
On_Red="\[\033[41m\]"      # Red
On_Green="\[\033[42m\]"    # Green
On_Yellow="\[\033[43m\]"   # Yellow
On_Blue="\[\033[44m\]"     # Blue
On_Purple="\[\033[45m\]"   # Purple
On_Cyan="\[\033[46m\]"     # Cyan
On_White="\[\033[47m\]"    # White

# High Intensity
IBlack="\[\033[90m\]"      # Black
IRed="\[\033[91m\]"        # Red
IGreen="\[\033[92m\]"      # Green
IYellow="\[\033[93m\]"     # Yellow
IBlue="\[\033[94m\]"       # Blue
IPurple="\[\033[95m\]"     # Purple
ICyan="\[\033[96m\]"       # Cyan
IWhite="\[\033[97m\]"      # White

# Bold High Intensity
BIBlack="\[\033[90m\]"     # Black
BIRed="\[\033[91m\]"       # Red
BIGreen="\[\033[92m\]"     # Green
BIYellow="\[\033[93m\]"    # Yellow
BIBlue="\[\033[94m\]"      # Blue
BIPurple="\[\033[95m\]"    # Purple
BICyan="\[\033[96m\]"      # Cyan
BIWhite="\[\033[97m\]"     # White

# High Intensity backgrounds
On_IBlack="\[\033[100m\]"  # Black
On_IRed="\[\033[101m\]"    # Red
On_IGreen="\[\033[102m\]"  # Green
On_IYellow="\[\033[103m\]" # Yellow
On_IBlue="\[\033[104m\]"   # Blue
On_IPurple="\[\033[105m\]" # Purple
On_ICyan="\[\033[106m\]"   # Cyan
On_IWhite="\[\033[107m\]"  # White

list-colors () {
	for i in {0..255}
	do
		echo -e "\033[38;05;${i}m${i}"
	done | column -c 128 -s '  '; echo -e "\033[m"
}

