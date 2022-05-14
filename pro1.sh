#!/bin/bash

escpae_char=$(printf "\u1b")

InputForJoin(){

read -rsn1 mode

if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
fi

case $mode in
	'[A' ) function_Exit ;;         #up
	'[B' ) function_Exit ;;	        #down                 
	'[C' ) function_SignIn ;;       #right 
	'[D' ) function_SignIn ;;       #left
esac
}

InputForExit(){

read -rsn1 mode

if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	exit
fi

case $mode in
	'[A' ) function_Join ;;
	'[B' ) function_Join ;;
    '[C' ) function_SignOut ;;
	'[D' ) function_SignOut ;;
esac
}

InputForSignIn(){

read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	SignIn
fi
case $mode in
	'[A' ) function_SignOut ;;
	'[B' ) function_SignOut ;;
	'[C' ) function_Join ;;
	'[D' ) function_Join ;;
esac
}

InputForSignOut(){

read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
fi

case $mode in
	'[A' ) function_SignIn ;;
	'[B' ) function_SignIn ;;
	'[C' ) function_Exit ;;
	'[D' ) function_Exit ;;
esac

}

SignInLogo(){
clear
echo '               ____ ___ ____ _   _   ___ _   _         '
echo '              / ___|_ _/ ___| \ | | |_ _| \ | |        '
echo '              \___ \| | |  _|  \| |  | ||  \| |        '
echo '               ___) | | |_| | |\  |  | || |\  |        '  
echo '              |____/___\____|_| \_| |___|_| \_|        '
echo '  '
echo '  '
}

#SignIn_InputForID(){

#read -rsn1 mode
#if [[ $mode == $escape_char ]]; then
#	read -rsn2 mode
#fi
#case $mode in
#	'[A' ) ;;
#	'[B' ) function_SignIn ;;
#	'[C' ) function_Exit ;;
#	'[D' ) function_Exit ;;
#esac


#}
SignIn_ID(){
SignInLogo

echo -e "         \033[41m         ID         \033[0m    \033[44m  Duplicate check  \033[0m"
echo '  '
echo -e "         \033[44m         PW         \033[0m     "
echo ' '
echo ' '
echo -e "                 \033[44m  SIGN IN  \033[0m     \033[44m   EXIT   \033[0m"



}


SignIn(){
SignInLogo

echo -e "         \033[44m         ID         \033[0m    \033[44m  Duplicate check  \033[0m"
echo '  '
echo -e "         \033[44m         PW         \033[0m     "
echo ' '
echo ' '
echo -e "                 \033[44m  SIGN IN  \033[0m     \033[44m   EXIT   \033[0m"

}

SignIn_ID(){
SignInLogo

echo -e "         \033[44m         ID         \033[0m    \033[44m  Duplicate check  \033[0m"
echo ' '
echo -e "         \033[44m         PW         \033[0m     "
echo ' '
echo ' '
echo -e "                 \033[44m  SIGN IN  \033[0m     \033[44m   EXIT   \033[0m"
}

function_Logo(){

clear

echo '             ____   ___  ____ ___ _          _  '
echo '            / ___| / _ \/ ___|_ _| |        / | '  
echo '            \___ \| | | \___ \| || |        | | '
echo '             ___) | |_| |___) | || |___     | | ' 
echo '            |____/ \___/|____/___|_____|    |_| ' 
echo '                _  _____  _     __  ____  __    '
echo '               / \|_   _|/ \    \ \/ /\ \/ /    '
echo '              / _ \ | | / _ \    \  /  \  /     '    
echo '             / ___ \| |/ ___ \   /  \  /  \     '
echo '            /_/   \_\_/_/   \_\ /_/\_\/_/\_\    '    
echo '                                                       '
echo '                                        2020203098 CDH ' 
echo ' '
}


function_DefaultScreen(){
function_Logo
echo -e "            \033[44m   JOIN   \033[0m            \033[44m  SIGN IN  \033[0m"
echo ' '

echo -e "            \033[44m   EXIT   \033[0m            \033[44m  SIGN OUT \033[0m"

read -rsn1 mode
if [[ $mode == $escape_char ]]; then
function_Join
while [ 1 ]
do
	InputForJoin
done
fi 

}

function_Join(){
function_Logo

echo -e "            \033[41m   JOIN   \033[0m            \033[44m  SIGN IN  \033[0m"
echo ' '
echo -e "            \033[44m   EXIT   \033[0m            \033[44m  SIGN OUT \033[0m"

InputForJoin

}


function_Exit(){

function_Logo

echo -e "            \033[44m   JOIN   \033[0m            \033[44m  SIGN IN  \033[0m"
echo ' '
echo -e "            \033[41m   EXIT   \033[0m            \033[44m  SIGN OUT \033[0m"

InputForExit

}

function_SignIn(){
function_Logo

echo -e "            \033[44m   JOIN   \033[0m            \033[41m  SIGN IN  \033[0m"

echo ' '

echo -e "            \033[44m   EXIT   \033[0m            \033[44m  SIGN OUT \033[0m"

InputForSignIn

}

function_SignOut(){
function_Logo
echo -e "            \033[44m   JOIN   \033[0m            \033[44m  SIGN IN  \033[0m"

echo ' '

echo -e "            \033[44m   EXIT   \033[0m            \033[41m  SIGN OUT \033[0m"

InputForSignOut
}


#while [ 1 ]; do
function_DefaultScreen
#function_Join


