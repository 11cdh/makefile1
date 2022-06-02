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
ID_1P="1P LOGIN"
ID_2P="2P LOGIN"
Win=0
Lose=0

Logo_MapSelect(){
clear

echo '                    _  _____  _     __  ____  __    '
echo '                   / \|_   _|/ \    \ \/ /\ \/ /    '
echo '                  / _ \ | | / _ \    \  /  \  /     '    
echo '                 / ___ \| |/ ___ \   /  \  /  \     '
echo '                /_/   \_\_/_/   \_\ /_/\_\/_/\_\    '    
echo '                '
echo '        __  __    _    ____    ____  _____ _     _____ ____ _____  '
echo '       |  \/  |  / \  |  _ \  / ___|| ____| |   | ____/ ___|_   _| '
echo '       | |\/| | / _ \ | |_) | \___ \|  _| | |   |  _|| |     | |   ' 
echo '       | |  | |/ ___ \|  __/   ___) | |___| |___| |__| |___  | |   '
echo '       |_|  |_/_/   \_\_|     |____/|_____|_____|_____\____| |_|   '
echo ' '
echo ' '
echo -e '    \u2510\u2501 '
}



Logo_Lobby(){
clear

echo '                   _  _____  _     __  ____  __    '
echo '                  / \|_   _|/ \    \ \/ /\ \/ /    '
echo '                 / _ \ | | / _ \    \  /  \  /     '    
echo '                / ___ \| |/ ___ \   /  \  /  \     '
echo '               /_/   \_\_/_/   \_\ /_/\_\/_/\_\    '    
echo '                  _     ___  ____  ______   __     '
echo '                 | |   / _ \| __ )| __ ) \ / /     '
echo '                 | |  | | | |  _ \|  _ \\ V /      '
echo '                 | |__| |_| | |_) | |_) || |       '
echo '                 |_____\___/|____/|____/ |_|       '
echo '  '  
echo '  '
echo '            _ ____                       ____  ____     '  
echo '           / |  _ \                     |___ \|  _ \    '
echo '           | | |_) |                      __) | |_) |   '
echo '           | |  __/                      / __/|  __/    '
echo '           |_|_|                        |_____|_|       '
echo ' '
Win_1P=$(Extract_Win_1P)
Win_2P=$(Extract_Win_2P)
Lose_1P=$(Extract_Lose_1P)
Lose_2P=$(Extract_Lose_2P)

echo "        ID : $ID_1P                       ID : $ID_2P     "
echo "        WIN : $Win_1P                        WIN : $Win_2P          "
echo "        LOSE : $Lose_2P                       LOSE : $Lose_2P         "
}



Extract_Win_1P(){

Info_1PWin=$(grep -w "ID:$ID_1P" account.txt)
echo "$Info_1PWin" | awk '{ print $3 }'
}

Extract_Win_2P(){
Info_2PWin=$(grep -w "ID:$ID_2P" account.txt)
echo "$Info_2PWin" | awk '{ print $3 }'
}

Extract_Lose_1P(){
Info_1PLose=$(grep -w "ID:$ID_1P" account.txt)
echo "$Info_1PLose" | awk '{ print $5 }'
}

Extract_Lose_2P(){
Info_2PLose=$(grep -w "ID:$ID_2P" account.txt)
echo "$Info_2PLose" | awk '{ print $5 }'
}

LobbyScreen(){
Logo_Lobby
echo ' '
echo -e "                \033[44m  START  \033[0m         \033[44m   EXIT   \033[0m"

read -rsn1 mode

if [[ $mode == $escape_char ]]; then
	Lobby_Start

	while [ 1 ]
		do
			Lobby_InputForStart
		done
fi 
}

Lobby_Start(){
Logo_Lobby
echo ' '
echo -e "                \033[41m  START  \033[0m         \033[44m   EXIT   \033[0m"

Lobby_InputForStart
}

Lobby_Exit(){
Logo_Lobby
echo ' '
echo -e "                \033[44m  START  \033[0m         \033[41m   EXIT   \033[0m"

Lobby_InputForExit
}

Lobby_InputForStart(){

read -rsn1 mode

if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	Logo_MapSelect
fi

case $mode in
	'[C' ) Lobby_Exit ;;       #right 
	'[D' ) Lobby_Exit ;;       #left
esac

}


Lobby_InputForExit(){

read -rsn1 mode

if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	exit
fi

case $mode in
	'[C' ) Lobby_Start ;;       #right 
	'[D' ) Lobby_Start ;;       #left
esac

}


InputFor1PLogin(){

read -rsn1 mode

if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	Login_1P
fi

case $mode in
	'[A' ) function_Join ;;         #up
	'[B' ) function_2PLogin ;;	        #down                 
	'[C' ) function_SignIn ;;       #right 
	'[D' ) function_SignIn ;;       #left
esac

}

InputFor2PLogin(){

read -rsn1 mode

if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	Login_2P
fi

case $mode in
	'[A' ) function_1PLogin ;;         #up
	'[B' ) function_Join ;;	        #down                 
	'[C' ) function_SignOut ;;       #right 
	'[D' ) function_SignOut ;;       #left
esac

}

InputForJoin(){

read -rsn1 mode

if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
		if [[ $ID_1P != "1P LOGIN" ]] && [[ $ID_2P != "2P LOGIN" ]]; then
			LobbyScreen
		while [ 1 ]
		do
			Lobby_InputForStart
		done

		else
			exit

		fi
fi
case $mode in
	'[A' ) function_2PLogin ;;
	'[B' ) function_1PLogin ;;
    '[C' ) function_Exit ;;
	'[D' ) function_Exit ;;
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
	'[A' ) function_SignOut ;;
	'[B' ) function_SignIn ;;
    '[C' ) function_Join ;;
	'[D' ) function_Join ;;
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
	'[A' ) function_Exit ;;
	'[B' ) function_SignOut ;;
	'[C' ) function_1PLogin ;;
	'[D' ) function_1PLogin ;;
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
	'[B' ) function_Exit ;;
	'[C' ) function_2PLogin ;;
	'[D' ) function_2PLogin ;;
esac

}

#functions for operate Join

Logo_1PLogin(){
clear
 
echo '              _ ____    _     ___   ____ ___ _   _     '
echo '             / |  _ \  | |   / _ \ / ___|_ _| \ | |    '
echo '             | | |_) | | |  | | | | |  _ | ||  \| |    '
echo '             | |  __/  | |__| |_| | |_| || || |\  |    '
echo '             |_|_|     |_____\___/ \____|___|_| \_|    '
echo ' '
echo ' '
 
}

Logo_2PLogin(){
clear
 
echo '            ____  ____    _     ___   ____ ___ _   _     '
echo '           |___ \|  _ \  | |   / _ \ / ___|_ _| \ | |    '
echo '             __) | |_) | | |  | | | | |  _ | ||  \| |    '
echo '            / __/|  __/  | |__| |_| | |_| || || |\  |    '
echo '           |_____|_|     |_____\___/ \____|___|_| \_|    '
echo ' '
echo ' '
 
}

Login_1P(){
Logo_1PLogin
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

Login_2P(){
Logo_2PLogin
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
Logo_1PLogin
echo -e "                      \033[41m         $Join_ID1         \033[0m   "
echo '  '
echo -e "                      \033[44m         $Join_PW1         \033[0m   "
echo ' '
echo ' '
echo -e "                   \033[44m  LOGIN  \033[0m       \033[44m   EXIT   \033[0m"

Join_InputForID
}

Join2P_ID(){
Logo_2PLogin
echo -e "                      \033[41m         $Join_ID2         \033[0m   "
echo '  '
echo -e "                      \033[44m         $Join_PW2         \033[0m   "
echo ' '
echo ' '
echo -e "                   \033[44m  LOGIN  \033[0m       \033[44m   EXIT   \033[0m"

Join2P_InputForID
}


Join_PW(){
Logo_1PLogin
echo -e "                      \033[44m         $Join_ID1         \033[0m   "
echo '  '
echo -e "                      \033[41m         $Join_PW1         \033[0m   "
echo ' '
echo ' '
echo -e "                   \033[44m  LOGIN  \033[0m       \033[44m   EXIT   \033[0m"

Join_InputForPW
}

Join2P_PW(){
Logo_2PLogin
echo -e "                      \033[44m         $Join_ID2         \033[0m   "
echo '  '
echo -e "                      \033[41m         $Join_PW2         \033[0m   "
echo ' '
echo ' '
echo -e "                   \033[44m  LOGIN  \033[0m       \033[44m   EXIT   \033[0m"

Join2P_InputForPW
}

Join_Login(){
Logo_1PLogin
echo -e "                      \033[44m         $Join_ID1         \033[0m   "
echo '  '
echo -e "                      \033[44m         $Join_PW1         \033[0m   "
echo ' '
echo ' '
echo -e "                   \033[41m  LOGIN  \033[0m       \033[44m   EXIT   \033[0m"

Join_InputForLogin
}

Join2P_Login(){
Logo_2PLogin
echo -e "                      \033[44m         $Join_ID2         \033[0m   "
echo '  '
echo -e "                      \033[44m         $Join_PW2         \033[0m   "
echo ' '
echo ' '
echo -e "                   \033[41m  LOGIN  \033[0m       \033[44m   EXIT   \033[0m"

Join2P_InputForLogin
}

Join_Exit(){
Logo_1PLogin
echo -e "                      \033[44m         $Join_ID1         \033[0m   "
echo '  '
echo -e "                      \033[44m         $Join_PW1         \033[0m   "
echo ' '
echo ' '
echo -e "                   \033[44m  LOGIN  \033[0m       \033[41m   EXIT   \033[0m"

Join_InputForExit
}

Join2P_Exit(){
Logo_2PLogin
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
	ID_1P="$Join_ID1"
	function_DefaultScreen
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
		ID_2P="$Join_ID2"
		function_DefaultScreen
	else
		exit
	fi
fi

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

check="ID:$SignOut_IDVal,PW:$SignOut_PWVal,"

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

SaveUserInfo(){

if grep -Fq "ID:$SignIn_IDVal" account.txt;
then exit
fi

printf "ID:$SignIn_IDVal," >> account.txt
printf "PW:$SignIn_PWVal," >> account.txt
printf " Win: $Win" >> account.txt
printf " Lose: $Lose\n" >> account.txt

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
echo -e "             \033[44m  $ID_1P  \033[0m           \033[44m  SIGN IN  \033[0m"
echo ' '

echo -e "             \033[44m  $ID_2P  \033[0m           \033[44m  SIGN OUT \033[0m"
echo ' '
echo -e "                 \033[44m   JOIN   \033[0m       \033[44m   EXIT   \033[0m"


read -rsn1 mode


if [[ $mode == $escape_char ]]; then
	function_1PLogin

	while [ 1 ]
		do
			InputFor1PLogin
		done
fi 

}

function_1PLogin(){
function_Logo

echo -e "             \033[41m  $ID_1P  \033[0m           \033[44m  SIGN IN  \033[0m"
echo ' '

echo -e "             \033[44m  $ID_2P  \033[0m           \033[44m  SIGN OUT \033[0m"
echo ' '
echo -e "                 \033[44m   JOIN   \033[0m       \033[44m   EXIT   \033[0m"

InputFor1PLogin

}

function_2PLogin(){
function_Logo

echo -e "             \033[44m  $ID_1P  \033[0m           \033[44m  SIGN IN  \033[0m"
echo ' '

echo -e "             \033[41m  $ID_2P  \033[0m           \033[44m  SIGN OUT \033[0m"
echo ' '
echo -e "                 \033[44m   JOIN   \033[0m       \033[44m   EXIT   \033[0m"

InputFor2PLogin
}

function_Join(){

function_Logo

echo -e "             \033[44m  $ID_1P  \033[0m           \033[44m  SIGN IN  \033[0m"
echo ' '

echo -e "             \033[44m  $ID_2P  \033[0m           \033[44m  SIGN OUT \033[0m"
echo ' '
echo -e "                 \033[41m   JOIN   \033[0m       \033[44m   EXIT   \033[0m"

InputForJoin

}




function_Exit(){

function_Logo
echo -e "             \033[44m  $ID_1P  \033[0m           \033[44m  SIGN IN  \033[0m"
echo ' '

echo -e "             \033[44m  $ID_2P  \033[0m           \033[44m  SIGN OUT \033[0m"
echo ' '
echo -e "                 \033[44m   JOIN   \033[0m       \033[41m   EXIT   \033[0m"

InputForExit

}

function_SignIn(){

function_Logo

echo -e "             \033[44m  $ID_1P  \033[0m           \033[41m  SIGN IN  \033[0m"
echo ' '

echo -e "             \033[44m  $ID_2P  \033[0m           \033[44m  SIGN OUT \033[0m"
echo ' '
echo -e "                 \033[44m   JOIN   \033[0m       \033[44m   EXIT   \033[0m"

InputForSignIn

}

function_SignOut(){
function_Logo
echo -e "             \033[44m  $ID_1P  \033[0m           \033[44m  SIGN IN  \033[0m"
echo ' '

echo -e "             \033[44m  $ID_2P  \033[0m           \033[41m  SIGN OUT \033[0m"
echo ' '
echo -e "                 \033[44m   JOIN   \033[0m       \033[44m   EXIT   \033[0m"

InputForSignOut
}

#main function

function_DefaultScreen
