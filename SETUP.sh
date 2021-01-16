#!/bin/sh
#
# Creates all links and entries
#

CONFIG_DIR=$(pwd)
SETUP_PATH="${CONFIG_DIR}/$(basename $0)"

# Bash
if ! grep -q "\\\_\\\.bashrc\\\_includes" ~/.bashrc ; then
	echo "Adding _.bashrc_inclues to .bashrc..."
	echo "" >> ~/.bashrc
	echo "# Added by ${SETUP_PATH}" >> ~/.bashrc
	echo "source ${CONFIG_DIR}/\_\.bashrc\_includes" >> ~/.bashrc
fi

# Terminator
if [ ! -L ~/.config/terminator/config ] ; then
	if [ -e ~/.config/terminator/config ] ; then
		echo "Creating backup of existing terminator configuration..."
		mv ~/.config/terminator/config ~/.config/terminator/config\_old
	fi
	echo "Creating link for terminator config..."
	mkdir -p .config/terminator
	ln -s ${CONFIG_DIR}/\.config\_terminator\_config ~/.config/terminator/config
fi


# VIM
if [ ! -L ~/.vimrc ] ; then
	if [ -e ~/.vimrc ] ; then
		echo "Creating backup of existing .vimrc..."
		mv ~/.vimrc ~/.vimrc\_old
	fi
	echo "Creating link for .vimrc..."
	ln -s ${CONFIG_DIR}/\_\.vimrc ~/.vimrc
fi
