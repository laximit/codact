#!/bin/sh

# Get codact repo
cd ~
echo "[+] Cloning github repo..."
git clone https://github.com/laximit/codact &> /dev/null
cd codact

# Make script executable
echo "[+] Making file executable..."
sudo chmod +x codact

# Choose between local/root bin installation
echo ""
echo "[?] Do you want to install on a local bin folder?"
echo "1. Local bin"
echo "2. Root bin"
read -p "> " BINOPTION

if [ $BINOPTION -eq 1 ] ; then
	mkdir $HOME/bin
	cp ./codact $HOME/bin
	cd ..
	rm -rf codact

	if [ -d $HOME/.bashrc ] ; then
		echo "PATH=$""HOME/bin:$""PATH" >> $HOME/.bashrc

	fi

	if [ -d $HOME/.zshrc ] ; then
		echo "PATH=$""HOME/bin:$""PATH" >> $HOME/.zshrc

	fi

	BINLOCATION="$HOME/bin"

elif [ $BINOPTION -eq 2 ] ; then
	sudo cp ./codact /usr/bin
	BINLOCATION="/usr/bin"

else
	echo "[x] Please choose a valid option."
	exit

fi

# Enter custom variable info
echo ""
echo "[?] What is your preferred projects folder? (default: $""HOME/Documents)"
read -p "> " WORKSPACEOPTION
echo ""
echo "[?] And your preferred ide/text editor? (default: $""EDITOR)"
read -p "> " EDITOROPTION

if [ $WORKSPACEOPTION = "" ] ; then
	cd $HOME
	mkdir Documents

else
	sudo sed -i "/WORKSPACE=/c\WORKSPACE='$WORKSPACEOPTION'" $BINLOCATION/codact

fi

if [ $EDITOROPTION != ""] ; then
	sudo sed -i "/EDITOR=/c\EDITOR='$EDITOROPTION'" $BINLOCATION/codact

fi

# End Script
echo "[O] Done, call the script using 'codact'."
exit
	

