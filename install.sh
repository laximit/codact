#!/bin/sh

cd
git clone https://github.com/laximit/multi
cd multi
sudo chmod a+x multicode
sudo cp multicode /bin
cd ..
rm -rf multi
echo "Done, now you can call the script by simply typing 'multicode'."
