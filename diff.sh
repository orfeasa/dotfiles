#!/usr/bin/env bash

function copyDotfiles() {
    cp -R ~/.iterm2_profile .;
    cp ~/.aliases .;
    cp ~/.path .;
    cp ~/.bash_profile .;
    cp ~/.gitconfig .;
    cp ~/.gitignore .;
    cp ~/.p10k.zsh .;
    cp ~/.zshrc .;
    cp ~/VSCode/settings.json ./VSCode/
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	copyDotfiles;
else
	read -p "This script copies dotfiles from ~ to the repo directory (pwd) in order to git diff changes. Do you want to continue? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		copyDotfiles;
	fi;
fi;
unset copyDotfiles;
