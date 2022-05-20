#!/bin/bash
LANG1='us'
LANG2='de'
LANG3='ba'
echo $(setxkbmap -query | grep "layout" | cut -f6 -d  ' ')
CURRENT_LANG=$(setxkbmap -query | grep "layout" | cut -f6 -d  ' ')
case $CURRENT_LANG in 
	"us") 
		setxkbmap de
		echo "DE" > ~/.config/i3/keyboard_layout
		pkill -SIGRTMIN+10 i3blocks;;
	"de") 
		setxkbmap ba
		echo "BA" > ~/.config/i3/keyboard_layout
		pkill -SIGRTMIN+10 i3blocks;;
	"ba") 
		setxkbmap us
		echo "US" > ~/.config/i3/keyboard_layout
		pkill -SIGRTMIN+10 i3blocks;;
esac
