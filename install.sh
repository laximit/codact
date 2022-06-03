#!/bin/sh

cd ~
git clone https://github.com/laximit/codact
cd codact
sudo chmod +x codact
mkdir $HOME/bin
cp ./codact $HOME/bin
cd ..
rm -rf codact

echo "Please add 'PATH=$HOME/bin:$PATH' to enable local bin folder."
