#!/bin/bash

clear
if ! command -v curl &> /dev/null; then
    pkg install curl -y &> /dev/null
else
echo
fi
clear

clear
# dx color
r='\033[1;91m'
p='\033[1;95m'
y='\033[1;93m'
g='\033[1;92m'
n='\033[1;0m'
b='\033[1;94m'
c='\033[1;96m'

# dx Symbol
X='\033[1;92m[\033[1;00m⎯꯭̽𓆩\033[1;92m]\033[1;96m'
D='\033[1;92m[\033[1;00m〄\033[1;92m]\033[1;93m'
E='\033[1;92m[\033[1;00m×\033[1;92m]\033[1;91m'
A='\033[1;92m[\033[1;00m+\033[1;92m]\033[1;92m'
C='\033[1;92m[\033[1;00m</>\033[1;92m]\033[92m'
lm='\033[1;96m▱▱▱▱▱▱▱▱▱▱▱▱\033[1;0m〄\033[1;96m▱▱▱▱▱▱▱▱▱▱▱▱\033[1;00m'
dm='\033[1;93m▱▱▱▱▱▱▱▱▱▱▱▱\033[1;0m〄\033[1;93m▱▱▱▱▱▱▱▱▱▱▱▱\033[1;00m'

dxcheck_internet() {
    curl --silent --head --fail --output /dev/null --connect-timeout 5 http://google.com
    if [ $? -eq 0 ]; then
        return 0  # Internet is available
    else
        return 1  # Internet is not available
    fi
}

banner() {
clear
echo
echo -e "${c}     ____  _  _       ___  __  ____  ____"
echo -e "${c}    (    \( \/ )___  / __)/  \(    \(  __)"
echo -e "${y}     ) D ( )  ((___)( (__(  O )) D ( ) _)"
echo -e "${y}    (____/(_/\_)     \___)\__/(____/(____)${c}"
echo -e "${y}               +-+-+-+-+-+-+-+-+-+"
echo -e "${c}               |B|Y|-|D|A|R|K|-|X|"
echo -e "${y}               +-+-+-+-+-+-+-+-+-+${n}"
printf "                \e[104m\e[1;98m「Code Generator」\e[0m\n"
printf "                \e[104m\e[1;77m「Made By Dark-X」\e[0m\n${c}"
printf "\n"
echo ""
}
banner
if dxcheck_internet; then
echo
else
echo
echo -e "               ${p}╔═══════════════╗"
echo -e "               ${p}║${n}</> ${c}No Internet${p}║"
echo -e "               ${p}╚═══════════════╝"
echo
	exit 0
	fi
spin() {
    local pid=$!
    local delay=0.40
    local spinner=('█■■■■' '■█■■■' '■■█■■' '■■■█■' '■■■■█')

    while ps -p $pid > /dev/null; do
        for i in "${spinner[@]}"; do
            tput civis
            echo -ne "\033[1;96m\r [+] Downloading..please wait.........\e[33m[\033[1;92m$i\033[1;93m]\033[1;0m   "
            sleep $delay
            printf "\b\b\b\b\b\b\b\b"
        done
    done
    printf "   \b\b\b\b\b"
    tput cnorm
    printf "\e[1;93m [Done]\e[0m\n"
    echo
    sleep 3
}

download_file() {
    local url=$1
    local output_file=$2

    curl -O "$url" &> /dev/null &

    spin
}

banner
download_file "https://github.com/DARK-H4CKER01/DX-CODE/blob/main/dx-code.sh" "dx-code.sh"

if [ -d "/data/data/com.termux/files/usr/" ]; then
	banner
	echo -e " ${C} ${y}Detected Termux on Android¡"
	echo -e " ${lm}"
	echo -e " ${A} ${g}Updating Package..¡"
	echo -e " ${dm}"
	apt update &> /dev/null
	apt upgrade -y &> /dev/null
	apt install nodejs -y && npm install -g bash-obfuscate &> /dev/null
	echo -e " ${A} ${p}Updating Completed...!¡"
	echo -e " ${lm}"
	sleep 5
	cd $HOME

    if [ -d "DX-CODE" ]; then
        cd DX-CODE
        sleep 2
	clear
        mv dx-code.sh /data/data/com.termux/files/usr/bin/dx
        chmod +x /data/data/com.termux/files/usr/bin/dx
        cd $HOME
	rm -rf DX-CODE
	sleep 3
	clear
        banner
        echo -e " ${C} ${c}Exit Your Terminal And Type ${g}dx${n}"
	echo
	sleep 2
        exit 0

    else
        clear
        banner
	echo -e " ${E} ${r}Tools Not Exits Your Terminal.."
	echo
	echo
	sleep 3
	exit 0
   fi
        else
    clear
    banner
    echo -e " ${E} ${r}Sorry, this operating system is not supported..×"
    echo
    echo -e " ${A} ${g} Wait for the next update for Linux...!¡"
    echo
        fi
