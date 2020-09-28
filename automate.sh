#! /usr/bin/bash
# Must run as root

#This script is intended to make the installateion of my scripts easier
clear
echo "
 __  __  ___  __ ___ _____ ___ ___  
/  \/  \/___\|  |  //   __\\  |  /  
|  \/  ||   ||  _ < |   __| |   |   
\__ \__/\___/|__|__\\_____/ \___/   
                                    
 ____   ___  _____  __ __  __  __   
/  _/  /___\/  _  \/  |  \/  \/  \  
|  |---|   ||  |  ||  |  |>-    -<  
\_____/\___/\__|__/\_____/\__/\__/  
                                    
";

# Make Directory and clone the mikey linux ep
Work_DIR="~/.automalibu"
echo "[✔] Checking directories...";
 	 
if [ -d "$Work_DIR" ]; then
    echo "[◉] Previous installation detected, do you wanna replace [Y/n]:" ;
    read  kalpana
    if [ "$kalpana" = "y" ]; then
        rm -rf ~/.automalibu
   		mkdir ~/.automalibu
		cd ~/.automalibu
		git clone https://github.com/hostilesquirrel/mikeylinuxep
	else
		if [ "$kalpana" = "n" ]; then
			echo "[✘] I have exceeded my thinking, fuck you[✘] ";
            exit
		fi
	fi
else
	echo "[◉] No previous installation detected, proceeding with install:" ;
	echo "."
	echo ".."
	mkdir ~/.automalibu
	cd ~/.automalibu
	git clone https://github.com/hostilesquirrel/mikeylinuxep
	echo "........[done✔]"
fi


 