#!/bin/bash

escape_char=$(printf "\u1b")

SignIn_IDVal="ID"
SignIn_PWVal="PW"   #default value


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

#functions for operate SignIn

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
SignIn_InputForID(){

read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	InputForID
fi
case $mode in
	'[A' ) SignIn_SignIn ;;
	'[B' ) SignIn_PW ;;
	'[C' ) SignIn_Dup ;;
	'[D' ) SignIn_Dup ;;
esac
}

InputForID(){
read SignIn_IDVal
SignIn_ID
}


SignIn_InputForPW(){
read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	InputForPW
fi
case $mode in
	'[A' ) SignIn_ID ;;
	'[B' ) SignIn_SignIn ;;
esac
}

InputForPW(){
read SignIn_PWVal
SignIn_PW
}

SignIn_InputForDup(){
read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	echo hi
fi
case $mode in
	'[A' ) SignIn_Exit ;;
	'[B' ) SignIn_PW ;;
	'[C' ) SignIn_ID ;;
	'[D' ) SignIn_ID ;;
esac
}

SignIn_InputForSignIn(){
read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	SaveUserInfo
fi
case $mode in
	'[A' ) SignIn_PW ;;
	'[B' ) SignIn_ID ;;
	'[C' ) SignIn_Exit ;;
	'[D' ) SignIn_Exit ;;
esac
}


SignIn_InputForExit(){
read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	exit
fi
case $mode in
	'[A' ) SignIn_PW ;;
	'[B' ) SignIn_Dup ;;
	'[C' ) SignIn_SignIn ;;
	'[D' ) SignIn_SignIn ;;
esac

}

SignIn(){
SignInLogo

echo -e "         \033[44m         $SignIn_IDVal         \033[0m    \033[44m  Duplicate check  \033[0m"
echo '  '
echo -e "         \033[44m         $SignIn_PWVal         \033[0m     "
echo ' '
echo ' '
echo -e "                 \033[44m  SIGN IN  \033[0m     \033[44m   EXIT   \033[0m"

read -rsn1 mode

if [[ $mode == $escape_char ]]; then
SignIn_ID
	while [ 1 ]
		do
			SignIn_InputForID
		done

fi 
}

SignIn_ID(){
SignInLogo

echo -e "         \033[41m         $SignIn_IDVal         \033[0m    \033[44m  Duplicate check  \033[0m"
echo '  '
echo -e "         \033[44m         $SignIn_PWVal         \033[0m     "
echo ' '
echo ' '
echo -e "                 \033[44m  SIGN IN  \033[0m     \033[44m   EXIT   \033[0m"

	SignIn_InputForID

}


SignIn_PW(){
SignInLogo

echo -e "         \033[44m         $SignIn_IDVal         \033[0m    \033[44m  Duplicate check  \033[0m"
echo '  '
echo -e "         \033[41m         $SignIn_PWVal         \033[0m     "
echo ' '
echo ' '
echo -e "                 \033[44m  SIGN IN  \033[0m     \033[44m   EXIT   \033[0m"

	SignIn_InputForPW
}

SignIn_Dup(){
SignInLogo

echo -e "         \033[44m         $SignIn_IDVal         \033[0m    \033[41m  Duplicate check  \033[0m"
echo '  '
echo -e "         \033[44m         $SignIn_PWVal         \033[0m     "
echo ' '
echo ' '
echo -e "                 \033[44m  SIGN IN  \033[0m     \033[44m   EXIT   \033[0m"

	SignIn_InputForDup
}

SignIn_SignIn(){
SignInLogo

echo -e "         \033[44m         $SignIn_IDVal         \033[0m    \033[44m  Duplicate check  \033[0m"
echo '  '
echo -e "         \033[44m         $SignIn_PWVal         \033[0m     "
echo ' '
echo ' '
echo -e "                 \033[41m  SIGN IN  \033[0m     \033[44m   EXIT   \033[0m"


	SignIn_InputForSignIn
}

SignIn_Exit(){
SignInLogo

echo -e "         \033[44m         $SignIn_IDVal         \033[0m    \033[44m  Duplicate check  \033[0m"
echo '  '
echo -e "         \033[44m         $SignIn_PWVal         \033[0m     "
echo ' '
echo ' '
echo -e "                 \033[44m  SIGN IN  \033[0m     \033[41m   EXIT   \033[0m"

	SignIn_InputForExit
}


# From here functions are operate for Default menu

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

#main function

function_DefaultScreen
