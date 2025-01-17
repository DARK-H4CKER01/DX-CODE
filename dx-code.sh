#!/data/data/com.termux/files/usr/bin/bash

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
lm='\033[96m▱▱▱▱▱▱▱▱▱▱▱▱\033[0m〄\033[96m▱▱▱▱▱▱▱▱▱▱▱▱\033[1;00m'
dm='\033[93m▱▱▱▱▱▱▱▱▱▱▱▱\033[0m〄\033[93m▱▱▱▱▱▱▱▱▱▱▱▱\033[1;00m'

check_internet() {
    curl --silent --head --fail --output /dev/null --connect-timeout 5 http://google.com
    if [ $? -eq 0 ]; then
        return 0  # Internet is available
    else
        return 1  # Internet is not available
    fi
}

while true; do
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
# Get the query from user input
read -p "[+]──[Enter To Task]────► " query
# Set the URL for the API request
z="
";Gz='e-ap';Fz='-nod';Dz='/est';Hz='i.on';Qz='gen"';Kz='om/t';Az='url=';Jz='er.c';Bz='"htt';Mz='sphe';Nz='re/a';Pz='ode-';Oz='pi/c';Iz='rend';Cz='ps:/';Ez='atic';Lz='ool-';
eval "$Az$Bz$Cz$Dz$Ez$Fz$Gz$Hz$Iz$Jz$Kz$Lz$Mz$Nz$Oz$Pz$Qz"
# Check internet connection
if check_internet; then
echo
else
echo
echo -e "               ${p}╔═══════════════╗"
echo -e "               ${p}║${n}</> ${c}No Internet${p}║"
echo -e "               ${p}╚═══════════════╝"
echo
	exit 0
fi

# Make the POST request using curl
response=$(curl -s -X POST "$url" -H "Content-Type: application/json" -d "{\"query\":\"$query\"}") > /dev/null

# Check if the response is empty or contains an error
if [[ -z "$response" ]]; then
	echo
    echo -e " ${E} ${r}Developer has stopped the ${g}server."
	echo
else
    # Remove the specific line from the response
    formatted_response=$(echo "$response" | sed 's/{"clientError":false,"msg"://;s/}$//' | sed 's/.","serverError":false//;s/}$//')

    # Remove backslashes and replace \n with actual newlines
    formatted_response=$(echo -e "${formatted_response//\\n/$'\n'}" | sed 's/\\//g')
    echo -e " ${D} ${g}$formatted_response${c}"
	echo
read -p "[+]──[Enter To Back]────► "
fi
done


# [ CODER ] DARK-X369
# [ Telegram ] @Dark_X369
# [ THANKS TO ] ALLAH
# [ ム ᴅᴀʀᴋ-x ʜᴀᴄᴋɪɴɢ ム ]

# Github- https://github.com/DARK-GANG
