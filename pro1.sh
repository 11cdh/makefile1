#!/bin/bash

escape_char=$(printf "\u1b")

SignIn_IDVal="ID"
SignIn_PWVal="PW"   #default value
SignOut_IDVal="ID"
SignOut_PWVal="PW"
Join_ID1="ID"
Join_ID2="ID"
Join_PW1="PW"
Join_PW2="PW"


InputForJoin(){

read -rsn1 mode

if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	Join
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
elif [[ $mode = "" ]]; then
	SignOut
fi
case $mode in
	'[A' ) function_SignIn ;;
	'[B' ) function_SignIn ;;
	'[C' ) function_Exit ;;
	'[D' ) function_Exit ;;
esac

}

#functions for operate Join

JoinLogoOne(){
clear
 
echo '              _ ____    _     ___   ____ ___ _   _     '
echo '             / |  _ \  | |   / _ \ / ___|_ _| \ | |    '
echo '             | | |_) | | |  | | | | |  _ | ||  \| |    '
echo '             | |  __/  | |__| |_| | |_| || || |\  |    '
echo '             |_|_|     |_____\___/ \____|___|_| \_|    '
echo ' '
echo ' '
 
}

JoinLogoTwo(){
clear
 
echo '            ____  ____    _     ___   ____ ___ _   _     '
echo '           |___ \|  _ \  | |   / _ \ / ___|_ _| \ | |    '
echo '             __) | |_) | | |  | | | | |  _ | ||  \| |    '
echo '            / __/|  __/  | |__| |_| | |_| || || |\  |    '
echo '           |_____|_|     |_____\___/ \____|___|_| \_|    '
echo ' '
echo ' '
 
}
Join(){
JoinLogoOne
echo -e "                      \033[44m         $Join_ID1         \033[0m   "
echo '  '
echo -e "                      \033[44m         $Join_PW1         \033[0m   "
echo ' '
echo ' '
echo -e "                   \033[44m  LOGIN  \033[0m       \033[44m   EXIT   \033[0m"

read -rsn1 mode

if [[ $mode == $escape_char ]]; then
Join_ID
	while [ 1 ]
		do
			Join_InputForID
		done

fi 
}

Join2P(){
JoinLogoTwo
echo -e "                      \033[44m         $Join_ID2         \033[0m   "
echo '  '
echo -e "                      \033[44m         $Join_PW2         \033[0m   "
echo ' '
echo ' '
echo -e "                   \033[44m  LOGIN  \033[0m       \033[44m   EXIT   \033[0m"

read -rsn1 mode

if [[ $mode == $escape_char ]]; then
Join2P_ID
	while [ 1 ]
		do
			Join2P_InputForID
		done

fi 

}


Join_ID(){
JoinLogoOne
echo -e "                      \033[41m         $Join_ID1         \033[0m   "
echo '  '
echo -e "                      \033[44m         $Join_PW1         \033[0m   "
echo ' '
echo ' '
echo -e "                   \033[44m  LOGIN  \033[0m       \033[44m   EXIT   \033[0m"

Join_InputForID
}

Join2P_ID(){
JoinLogoTwo
echo -e "                      \033[41m         $Join_ID2         \033[0m   "
echo '  '
echo -e "                      \033[44m         $Join_PW2         \033[0m   "
echo ' '
echo ' '
echo -e "                   \033[44m  LOGIN  \033[0m       \033[44m   EXIT   \033[0m"

Join2P_InputForID
}


Join_PW(){
JoinLogoOne
echo -e "                      \033[44m         $Join_ID1         \033[0m   "
echo '  '
echo -e "                      \033[41m         $Join_PW1         \033[0m   "
echo ' '
echo ' '
echo -e "                   \033[44m  LOGIN  \033[0m       \033[44m   EXIT   \033[0m"

Join_InputForPW
}

Join2P_PW(){
JoinLogoTwo
echo -e "                      \033[44m         $Join_ID2         \033[0m   "
echo '  '
echo -e "                      \033[41m         $Join_PW2         \033[0m   "
echo ' '
echo ' '
echo -e "                   \033[44m  LOGIN  \033[0m       \033[44m   EXIT   \033[0m"

Join2P_InputForPW
}

Join_Login(){
JoinLogoOne
echo -e "                      \033[44m         $Join_ID1         \033[0m   "
echo '  '
echo -e "                      \033[44m         $Join_PW1         \033[0m   "
echo ' '
echo ' '
echo -e "                   \033[41m  LOGIN  \033[0m       \033[44m   EXIT   \033[0m"

Join_InputForLogin
}

Join2P_Login(){
JoinLogoTwo
echo -e "                      \033[44m         $Join_ID2         \033[0m   "
echo '  '
echo -e "                      \033[44m         $Join_PW2         \033[0m   "
echo ' '
echo ' '
echo -e "                   \033[41m  LOGIN  \033[0m       \033[44m   EXIT   \033[0m"

Join2P_InputForLogin
}

Join_Exit(){
JoinLogoOne
echo -e "                      \033[44m         $Join_ID1         \033[0m   "
echo '  '
echo -e "                      \033[44m         $Join_PW1         \033[0m   "
echo ' '
echo ' '
echo -e "                   \033[44m  LOGIN  \033[0m       \033[41m   EXIT   \033[0m"

Join_InputForExit
}

Join2P_Exit(){
JoinLogoTwo
echo -e "                      \033[44m         $Join_ID2         \033[0m   "
echo '  '
echo -e "                      \033[44m         $Join_PW2         \033[0m   "
echo ' '
echo ' '
echo -e "                   \033[44m  LOGIN  \033[0m       \033[41m   EXIT   \033[0m"

Join2P_InputForExit
}

Join_InputForID(){
read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	Join_ReadID
fi
case $mode in
	'[A' ) Join_Login ;;
	'[B' ) Join_PW ;;
esac
}

Join_ReadID(){
read Join_ID1
Join_ID
}

Join2P_InputForID(){
read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	Join2P_ReadID
fi
case $mode in
	'[A' ) Join2P_Login ;;
	'[B' ) Join2P_PW ;;
esac
}

Join2P_ReadID(){
read Join_ID2
Join2P_ID
}

Join_InputForPW(){
read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	Join_ReadPW
fi
case $mode in
	'[A' ) Join_ID ;;
	'[B' ) Join_Login ;;
esac
}

Join_ReadPW(){
read Join_PW1
Join_PW
}

Join2P_InputForPW(){
read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	Join2P_ReadPW
fi
case $mode in
	'[A' ) Join2P_ID ;;
	'[B' ) Join2P_Login ;;
esac
}

Join2P_ReadPW(){
read Join_PW2
Join2P_PW
}


Join_InputForLogin(){
read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	Login1P
fi
case $mode in
	'[A' ) Join_PW ;;
	'[B' ) Join_ID ;;
    '[C' ) Join_Exit ;;
    '[D' ) Join_Exit ;;
esac
}

Login1P(){

check="ID:$Join_ID1,PW:$Join_PW1,"

if grep -Fq "$check" account.txt;
then	
	Join2P
else
	exit
fi

}

Join2P_InputForLogin(){
read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	Login2P
fi
case $mode in
	'[A' ) Join2P_PW ;;
	'[B' ) Join2P_ID ;;
    '[C' ) Join2P_Exit ;;
    '[D' ) Join2P_Exit ;;
esac
}

Login2P(){

check="ID:$Join_ID2,PW:$Join_PW2,"

if [ $Join_ID1 ==  $Join_ID2 ]; then
	exit
else
	if grep -Fq "$check" account.txt; then
		SuccessLogo
	else
		exit
	fi
fi

}

SuccessLogo(){

clear

echo ' '
echo ' '
echo ' ' 
echo '           ____  _   _  ____ ____ _____ ____ ____         '
echo '          / ___|| | | |/ ___/ ___|  ___/ ___/ ___|        '
echo '          \___ \| | | | |  | |   |  _| \___ \___ \        '
echo '           ___) | |_| | |__| |___| |___ |__) |__) |       '
echo '          |____/ \___/ \____\____|_____|____/____/        '

Join2P_InputForLogin

}



Join_InputForExit(){
read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	exit
fi
case $mode in
	'[A' ) Join_PW ;;
	'[B' ) Join_ID ;;
    '[C' ) Join_Login ;;
    '[D' ) Join_Login ;;
esac
}

Join2P_InputForExit(){
read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	exit
fi
case $mode in
	'[A' ) Join2P_PW ;;
	'[B' ) Join2P_ID ;;
    '[C' ) Join2P_Login ;;
    '[D' ) Join2P_Login ;;
esac
}


#functions for operate SignOut 

SignOutLogo(){
clear
echo '             ____ ___ ____ _   _    ___  _   _ _____    '
echo '            / ___|_ _/ ___| \ | |  / _ \| | | |_   _|   '
echo '            \___ \| | |  _|  \| | | | | | | | | | |     '
echo '             ___) | | |_| | |\  | | |_| | |_| | | |     '  
echo '            |____/___\____|_| \_|  \___/ \___/  |_|      '
echo '  '
echo '  '
}

SignOut(){

SignOutLogo
echo -e "                      \033[44m         $SignOut_IDVal         \033[0m   "
echo '  '
echo -e "                      \033[44m         $SignOut_PWVal         \033[0m   "
echo ' '
echo ' '
echo -e "                  \033[44m  SIGN OUT  \033[0m     \033[44m   EXIT   \033[0m"

read -rsn1 mode

if [[ $mode == $escape_char ]]; then
SignOut_ID
	while [ 1 ]
		do
			SignOut_InputForID
		done

fi 
}


SignOut_ID(){

SignOutLogo
echo -e "                      \033[41m         $SignOut_IDVal         \033[0m   "
echo '  '
echo -e "                      \033[44m         $SignOut_PWVal         \033[0m   "
echo ' '
echo ' '
echo -e "                  \033[44m  SIGN OUT  \033[0m     \033[44m   EXIT   \033[0m"

SignOut_InputForID

}
SignOut_PW(){

SignOutLogo
echo -e "                      \033[44m         $SignOut_IDVal         \033[0m   "
echo '  '
echo -e "                      \033[41m         $SignOut_PWVal         \033[0m   "
echo ' '
echo ' '
echo -e "                  \033[44m  SIGN OUT  \033[0m     \033[44m   EXIT   \033[0m"

SignOut_InputForPW
}

SignOut_SignOut(){

SignOutLogo
echo -e "                      \033[44m         $SignOut_IDVal         \033[0m   "
echo '  '
echo -e "                      \033[44m         $SignOut_PWVal         \033[0m   "
echo ' '
echo ' '
echo -e "                  \033[41m  SIGN OUT  \033[0m     \033[44m   EXIT   \033[0m"

SignOut_InputForSignOut
}

SignOut_Exit(){

SignOutLogo
echo -e "                      \033[44m         $SignOut_IDVal         \033[0m   "
echo '  '
echo -e "                      \033[44m         $SignOut_PWVal         \033[0m   "
echo ' '
echo ' '
echo -e "                  \033[44m  SIGN OUT  \033[0m     \033[41m   EXIT   \033[0m"

SignOut_InputForExit
}



SignOut_InputForID(){
read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	SignOut_ReadID
fi
case $mode in
	'[A' ) SignOut_SignOut ;;
	'[B' ) SignOut_PW ;;
esac
}

SignOut_ReadID(){
read SignOut_IDVal
SignOut_ID
}

SignOut_InputForPW(){
read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	SignOut_ReadPW
fi
case $mode in
	'[A' ) SignOut_ID ;;
	'[B' ) SignOut_SignOut ;;
esac
}

SignOut_ReadPW(){
read SignOut_PWVal
SignOut_PW
}

SignOut_InputForSignOut(){
read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	DeleteAccount
fi
case $mode in
	'[A' ) SignOut_PW ;;
	'[B' ) SignOut_ID ;;
    '[C' ) SignOut_Exit ;;
    '[D' ) SignOut_Exit ;;
esac
}

DeleteAccount(){

check="ID:$SignOut_IDVal,PW:$SignOut_PWVal"

if grep -Fq "$check" account.txt;
then	
	sed -i "/$check/d" account.txt
fi

exit
}

SignOut_InputForExit(){
read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	exit
fi
case $mode in
	'[A' ) SignOut_PW ;;
	'[B' ) SignOut_ID ;;
    '[C' ) SignOut_SignOut ;;
    '[D' ) SignOut_SignOut ;;
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
	SignIn_ReadID
fi
case $mode in
	'[A' ) SignIn_SignIn ;;
	'[B' ) SignIn_PW ;;
	'[C' ) SignIn_Dup ;;
	'[D' ) SignIn_Dup ;;
esac
}

SignIn_ReadID(){
read SignIn_IDVal
SignIn_ID
}


SignIn_InputForPW(){
read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	SignIn_ReadPW
fi
case $mode in
	'[A' ) SignIn_ID ;;
	'[B' ) SignIn_SignIn ;;
esac
}

SignIn_ReadPW(){
read SignIn_PWVal
SignIn_PW
}

SignIn_InputForDup(){
read -rsn1 mode
if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	CheckID
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

Win=0
Lose=0

SaveUserInfo(){

if grep -Fq "ID:$SignIn_IDVal" account.txt;
then exit
fi

printf "ID:$SignIn_IDVal," >> account.txt
printf "PW:$SignIn_PWVal," >> account.txt
printf "Win:$Win," >> account.txt
printf "Lose:$Lose\n" >> account.txt


exit
}

CheckID(){

if grep -Fq "ID:$SignIn_IDVal," account.txt;
then
	echo "같은 ID 존재"
else
	echo "회원 가입 가능"
fi

exit
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
