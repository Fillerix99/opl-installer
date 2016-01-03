#!/bin/bash
# Script to download and install opls script automatically
echo "Installing dependencies"
sudo apt-get update
sudo apt-get install nodejs
sudo apt-get install zip
wget https://github.com/opl-/winter-arg-tester/archive/master.zip
unzip master.zip
rm master.zip
echo "Done downloading, go into winter-arg-tester and type: nodejs cli.js bot or run the scripts!"
