#!/bin/bash

echo copying .bash_profile to ~/.bash_profile
cp .bash_profile ~/

echo copying .bashrc to ~/.bashrc
cp .bashrc ~/

echo copying .aliases to ~
cp .aliases ~/

echo copying .osx to ~/.osx
cp .osx ~/
chmod +x ~/.osx

echo copying .gitconfig to ~/.gitconfig
cp .gitconfig ~/

read -p	"Do you want to run .osx? (y/n)" -n 1 -r REPLY
echo
if [[ $REPLY =~ [Yy] ]]
then
	echo Setting osx defaults
	source ~/.osx
else
	echo Skipping osx defaults
fi

# for the c alias (syntax higglighted cat)
sudo easy_install Pygments
