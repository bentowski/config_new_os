#!/bin/bash

af=".bash_aliases"

touch ~/$af
#sudo apt install source -y
echo "alias sap='sudo apt -y'" > ~/$af
echo "alias upg='sudo apt update && sudo apt -y upgrade'" >> ~/$af
sudo apt install make clang valgrind -y

#source ~/.bash_aliases
