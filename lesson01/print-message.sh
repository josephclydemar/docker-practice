#!/bin/bash

neofetch

PHRASES=("ITS A TRAP!!" "I am your Father!" "I find your lack of faith disturbing...")

# randomly select a phrase
RANDOM_INDEX=$(( RANDOM % ${#PHRASES[@]} ))
SELECTED_PHRASE=${PHRASES[$RANDOM_INDEX]}

# print the messages with figlet
figlet -w 200 -f /usr/local/share/figlet/fonts/starwars.flf "$SELECTED_PHRASE"

