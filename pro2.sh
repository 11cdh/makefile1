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

w='\u2500\u2500\u2500' #width
h='\u2502' #height

a1="   "
a2="   "
a3="   "
a4="   "
a5="   "
a6="   "
a7="   "
a8="   "

b1="   "
b2="   "
b3="   "
b4="   "
b5="   "
b6="   "
b7="   "
b8="   "

c1="   "
c2="   "
c3="   "
c4="   "
c5="   "
c6="   "
c7="   "
c8="   "

d1="   "
d2="   "
d3="   "
d4="   "
d5="   "
d6="   "
d7="   "
d8="   "

e1="   "
e2="   "
e3="   "
e4="   "
e5="   "
e6="   "
e7="   "
e8="   "

f1="   "
f2="   "
f3="   "
f4="   "
f5="   "
f6="   "
f7="   "
f8="   "

g1="   "
g2="   "
g3="   "
g4="   "
g5="   "
g6="   "
g7="   "
g8="   "

h1="   "
h2="   "
h3="   "
h4="   "
h5="   "
h6="   "
h7="   "
h8="   "

location=64

Map1_Prepare(){
clear

Make_Default

echo -e "        \u250C$w\u252C$w\u252C$w\u252C$w\u252C$w\u252C$w\u252C$w\u252C$w\u2510"
echo -e "        \u2502$a1\u2502$a2\u2502$a3\u2502$a4\u2502$a5\u2502$a6\u2502$a7\u2502$a8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$b1\u2502$b2\u2502$b3\u2502$b4\u2502$b5\u2502$b6\u2502$b7\u2502$b8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$c1\u2502$c2\u2502$c3\u2502$c4\u2502$c5\u2502$c6\u2502$c7\u2502$c8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$d1\u2502$d2\u2502$d3\u2502$d4\u2502$d5\u2502$d6\u2502$d7\u2502$d8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$e1\u2502$e2\u2502$e3\u2502$e4\u2502$e5\u2502$e6\u2502$e7\u2502$e8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$f1\u2502$f2\u2502$f3\u2502$f4\u2502$f5\u2502$f6\u2502$f7\u2502$f8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$g1\u2502$g2\u2502$g3\u2502$g4\u2502$g5\u2502$g6\u2502$g7\u2502$g8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$h1\u2502$h2\u2502$h3\u2502$h4\u2502$h5\u2502$h6\u2502$h7\u2502$h8\u2502"
echo -e "        \u2514$w\u2534$w\u2534$w\u2534$w\u2534$w\u2534$w\u2534$w\u2534$w\u2518"

echo  "   1P : $P1_Score                             2P : 0   "

read -rsn1 mode 
   
 	if [[ $mode == $escape_char ]]; then
  			h8=$white
			while [ 1 ]
					do
						Map1_input  	
					done
	fi

}

Map2_Prepare(){

clear

Make_Default2

echo '              _  _____  _     __  ____  __    '
echo '             / \|_   _|/ \    \ \/ /\ \/ /    '
echo '            / _ \ | | / _ \    \  /  \  /     '    
echo '           / ___ \| |/ ___ \   /  \  /  \     '
echo '          /_/   \_\_/_/   \_\ /_/\_\/_/\_\    ' 
echo -e "        \u250C$w\u252C$w\u252C$w\u252C$w\u252C$w\u252C$w\u252C$w\u252C$w\u2510"
echo -e "        \u2502$a1\u2502$a2\u2502$a3\u2502$a4\u2502$a5\u2502$a6\u2502$a7\u2502$a8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$b1\u2502$b2\u2502$b3\u2502$b4\u2502$b5\u2502$b6\u2502$b7\u2502$b8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$c1\u2502$c2\u2502$c3\u2502$c4\u2502$c5\u2502$c6\u2502$c7\u2502$c8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$d1\u2502$d2\u2502$d3\u2502$d4\u2502$d5\u2502$d6\u2502$d7\u2502$d8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$e1\u2502$e2\u2502$e3\u2502$e4\u2502$e5\u2502$e6\u2502$e7\u2502$e8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$f1\u2502$f2\u2502$f3\u2502$f4\u2502$f5\u2502$f6\u2502$f7\u2502$f8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$g1\u2502$g2\u2502$g3\u2502$g4\u2502$g5\u2502$g6\u2502$g7\u2502$g8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$h1\u2502$h2\u2502$h3\u2502$h4\u2502$h5\u2502$h6\u2502$h7\u2502$h8\u2502"
echo -e "        \u2514$w\u2534$w\u2534$w\u2534$w\u2534$w\u2534$w\u2534$w\u2534$w\u2518"

echo  "   1P : $P1_Score                             2P : 0   "

read -rsn1 mode 
   
 	if [[ $mode == $escape_char ]]; then
  			h8=$white
			while [ 1 ]
					do
						Map2_input  	
					done
	fi

}


Map1_Real(){
clear


echo -e "        \u250C$w\u252C$w\u252C$w\u252C$w\u252C$w\u252C$w\u252C$w\u252C$w\u2510"
echo -e "        \u2502$a1\u2502$a2\u2502$a3\u2502$a4\u2502$a5\u2502$a6\u2502$a7\u2502$a8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$b1\u2502$b2\u2502$b3\u2502$b4\u2502$b5\u2502$b6\u2502$b7\u2502$b8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$c1\u2502$c2\u2502$c3\u2502$c4\u2502$c5\u2502$c6\u2502$c7\u2502$c8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$d1\u2502$d2\u2502$d3\u2502$d4\u2502$d5\u2502$d6\u2502$d7\u2502$d8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$e1\u2502$e2\u2502$e3\u2502$e4\u2502$e5\u2502$e6\u2502$e7\u2502$e8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$f1\u2502$f2\u2502$f3\u2502$f4\u2502$f5\u2502$f6\u2502$f7\u2502$f8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$g1\u2502$g2\u2502$g3\u2502$g4\u2502$g5\u2502$g6\u2502$g7\u2502$g8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$h1\u2502$h2\u2502$h3\u2502$h4\u2502$h5\u2502$h6\u2502$h7\u2502$h8\u2502"
echo -e "        \u2514$w\u2534$w\u2534$w\u2534$w\u2534$w\u2534$w\u2534$w\u2534$w\u2518"

echo  "   1P : $P1_Score                             2P : 0   "

			while [ 1 ]
					do
						Map1_input  	
					done

}

Map2_Real(){
clear


echo -e "        \u250C$w\u252C$w\u252C$w\u252C$w\u252C$w\u252C$w\u252C$w\u252C$w\u2510"
echo -e "        \u2502$a1\u2502$a2\u2502$a3\u2502$a4\u2502$a5\u2502$a6\u2502$a7\u2502$a8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$b1\u2502$b2\u2502$b3\u2502$b4\u2502$b5\u2502$b6\u2502$b7\u2502$b8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$c1\u2502$c2\u2502$c3\u2502$c4\u2502$c5\u2502$c6\u2502$c7\u2502$c8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$d1\u2502$d2\u2502$d3\u2502$d4\u2502$d5\u2502$d6\u2502$d7\u2502$d8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$e1\u2502$e2\u2502$e3\u2502$e4\u2502$e5\u2502$e6\u2502$e7\u2502$e8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$f1\u2502$f2\u2502$f3\u2502$f4\u2502$f5\u2502$f6\u2502$f7\u2502$f8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$g1\u2502$g2\u2502$g3\u2502$g4\u2502$g5\u2502$g6\u2502$g7\u2502$g8\u2502"
echo -e "        \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "        \u2502$h1\u2502$h2\u2502$h3\u2502$h4\u2502$h5\u2502$h6\u2502$h7\u2502$h8\u2502"
echo -e "        \u2514$w\u2534$w\u2534$w\u2534$w\u2534$w\u2534$w\u2534$w\u2534$w\u2518"

echo  "   1P : $P1_Score                             2P : 0   "

			while [ 1 ]
					do
						Map2_input  	
					done

}



Map1_input()
{


read -rsn1 mode 
  if [[ $mode == $escape_char ]]; then
      read -rsn2 mode
  elif [[ $mode = "" ]]; then
          Bluepoint
  fi
  
  case $mode in
      '[A' ) Map1_Up  ;;         #up
      '[B' ) Map1_Down ;;         #down                 
      '[C' ) Map1_Right ;;       #right 
      '[D' ) Map1_Left ;;       #left
  esac

Map1_Real

}

Map2_input()
{

read -rsn1 mode 
  if [[ $mode == $escape_char ]]; then
      read -rsn2 mode
  elif [[ $mode = "" ]]; then
          Bluepoint2
  fi
  
  case $mode in
      '[A' ) Map2_Up  ;;         #up
      '[B' ) Map2_Down ;;         #down                 
      '[C' ) Map2_Right ;;       #right 
      '[D' ) Map2_Left ;;       #left
  esac

Map2_Real

}


blue="\033[44m   \033[0m"

P1_Score=0

Bluepoint(){

 case $location in

      1) if [[ "$a1" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		a1=$blue ;; 
 
      2) if [[ "$a2" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		a2=$blue ;;  
           
      3) if [[ "$a3" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		a3=$blue ;;
        
      4) if [[ "$a4" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		a4=$blue ;;   

      5) if [[ "$a5" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		a5=$blue ;;
   
	  6) if [[ "$a6" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		a6=$blue ;;   

      7) if [[ "$a7" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		a7=$blue ;;  
 
      8) if [[ "$a8" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		a8=$blue ;;  
 
      9) if [[ "$b1" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		b1=$blue ;;   

      10) if [[ "$b2" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		b2=$blue ;;   

      11) if [[ "$b3" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		b3=$blue ;;  
 
      12) if [[ "$b4" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		b4=$blue ;;   

      13) if [[ "$b5" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		b5=$blue ;;   

      14) if [[ "$b6" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		b6=$blue ;;   

      15) if [[ "$b7" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		b7=$blue ;;   

      16) if [[ "$b8" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		b8=$blue ;;   

      17) if [[ "$c1" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		c1=$blue ;;   

      18) if [[ "$c2" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		c2=$blue ;;   

      19) if [[ "$c3" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		c3=$blue ;;   

      20) if [[ "$c4" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		c4=$blue ;;   

      21) if [[ "$c5" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		c5=$blue ;;   

      22) if [[ "$c6" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		c6=$blue ;;   

      23) if [[ "$c7" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		c7=$blue ;;   

      24) if [[ "$c8" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		c8=$blue ;;

      25) if [[ "$d1" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		d1=$blue ;;

	  26) if [[ "$d2" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		d2=$blue ;;

      27) if [[ "$d3" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		d3=$blue ;;

      28) if [[ "$d4" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		d4=$blue ;;

      29) if [[ "$d5" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		d5=$blue ;;

      30) if [[ "$d6" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		d6=$blue ;;

      31) if [[ "$d7" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		d7=$blue ;;

      32) if [[ "$d8" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		d8=$blue ;;

      33) if [[ "$e1" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		e1=$blue ;;

      34) if [[ "$e2" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		e2=$blue ;;

      35) if [[ "$e3" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		e3=$blue ;;

      36) if [[ "$e4" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		e4=$blue ;;

      37) if [[ "$e5" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		e5=$blue ;;

      38) if [[ "$e6" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		e6=$blue ;;

      39) if [[ "$e7" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		e7=$blue ;;

      40) if [[ "$e8" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		e8=$blue ;;

      41) if [[ "$f1" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
    	f1=$blue ;;

      42) if [[ "$f2" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
   	 	f2=$blue ;;

      43) if [[ "$f3" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
    	f3=$blue ;;

      44) if [[ "$f4" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		f4=$blue ;;

      45) if [[ "$f5" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		f5=$blue ;;

      46) if [[ "$f6" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		f6=$blue ;;

      47) if [[ "$f7" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		f7=$blue ;;

      48) if [[ "$f8" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		f8=$blue ;;

      49) if [[ "$g1" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		g1=$blue ;;

      50) if [[ "$g2" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		g2=$blue ;;

      51) if [[ "$g3" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
  		g3=$blue ;;

      52) if [[ "$g4" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		g4=$blue ;;

      53) if [[ "$g5" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
        g5=$blue ;;

      54) if [[ "$g6" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		g6=$blue ;;

      55) if [[ "$g7" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		g7=$blue ;;

      56) if [[ "$g8" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		g8=$blue ;;

      57) if [[ "$h1" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		h1=$blue ;;

      58) if [[ "$h2" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		h2=$blue ;;

      59) if [[ "$h3" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		h3=$blue ;;

      60) if [[ "$h4" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		h4=$blue ;;

      61) if [[ "$h5" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		h5=$blue ;;

      62) if [[ "$h6" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		h6=$blue ;;

      63) if [[ "$h7" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		h7=$blue ;;

	  64) if [[ "$h8" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
  		h8=$blue ;;   

esac
}

Bluepoint2(){

 case $location in

      1) if [[ "$a1" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		a1=$blue ;; 
 
      2) if [[ "$a2" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		a2=$blue ;;  
           
      3) if [[ "$a3" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		a3=$blue ;;
        
      4) if [[ "$a4" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		a4=$blue ;;   

      5) if [[ "$a5" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		a5=$blue ;;
   
	  6) if [[ "$a6" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		a6=$blue ;;   

      7) if [[ "$a7" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		a7=$blue ;;  
 
      8) if [[ "$a8" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		a8=$blue ;;  
 
      9) if [[ "$b1" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		b1=$blue ;;   

      10)  ;;

      11) if [[ "$b3" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		b3=$blue ;;  
 
      12) if [[ "$b4" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		b4=$blue ;;   

      13) if [[ "$b5" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		b5=$blue ;;   

      14) if [[ "$b6" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		b6=$blue ;;   

      15)    ;;   

      16) if [[ "$b8" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		b8=$blue ;;   

      17) if [[ "$c1" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		c1=$blue ;;   

      18) if [[ "$c2" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		c2=$blue ;;   

      19)  ;;   

      20) if [[ "$c4" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		c4=$blue ;;   

      21) if [[ "$c5" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		c5=$blue ;;   

      22) ;;

      23) if [[ "$c7" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		c7=$blue ;;   

      24) if [[ "$c8" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		c8=$blue ;;

      25) if [[ "$d1" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		d1=$blue ;;

	  26) if [[ "$d2" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		d2=$blue ;;

      27) if [[ "$d3" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		d3=$blue ;;

      28) ;;

      29) ;;

	  30) if [[ "$d6" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi     
        d6=$blue ;;  

      31) if [[ "$d7" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		d7=$blue ;;

      32) if [[ "$d8" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		d8=$blue ;;

      33) if [[ "$e1" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		e1=$blue ;;

      34) if [[ "$e2" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		e2=$blue ;;

      35) if [[ "$e3" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		e3=$blue ;;

      36)  ;;

      37)  ;;

      38) if [[ "$e6" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		e6=$blue ;;

      39) if [[ "$e7" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		e7=$blue ;;

      40) if [[ "$e8" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		e8=$blue ;;

      41) if [[ "$f1" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
    	f1=$blue ;;

      42) if [[ "$f2" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
   	 	f2=$blue ;;

      43) ;;

      44) if [[ "$f4" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		f4=$blue ;;

      45) if [[ "$f5" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		f5=$blue ;;

      46)  ;;

      47) if [[ "$f7" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		f7=$blue ;;

      48) if [[ "$f8" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		f8=$blue ;;

      49) if [[ "$g1" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		g1=$blue ;;

      50)  ;;

      51) if [[ "$g3" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
  		g3=$blue ;;

      52) if [[ "$g4" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		g4=$blue ;;

      53) if [[ "$g5" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
        g5=$blue ;;

      54) if [[ "$g6" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		g6=$blue ;;

      55)  ;;

      56) if [[ "$g8" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		g8=$blue ;;

      57) if [[ "$h1" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		h1=$blue ;;

      58) if [[ "$h2" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		h2=$blue ;;

      59) if [[ "$h3" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		h3=$blue ;;

      60) if [[ "$h4" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		h4=$blue ;;

      61) if [[ "$h5" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		h5=$blue ;;

      62) if [[ "$h6" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		h6=$blue ;;

      63) if [[ "$h7" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
		h7=$blue ;;

	  64) if [[ "$h8" != "$blue" ]]; then
			P1_Score=$(($P1_Score+1))
		 fi
  		h8=$blue ;;   

esac
}

Map1_Up()
{	
	case $location in
	1 ) ;;
    2 ) ;;
	3 ) ;;
	4 ) ;;
	5 ) ;;
	6 ) ;;
	7 ) ;;
	8 ) ;;
 	* ) location=$(($location-8)) ;;
	esac
	Cursor_Move
	Map1_Real
}

Map2_Up()
{	
	case $location in
	1 ) ;;
    2 ) ;;
	3 ) ;;
	4 ) ;;
	5 ) ;;
	6 ) ;;
	7 ) ;;
	8 ) ;;
 	* ) location=$(($location-8)) ;;
	esac
	Cursor_Move2
	Map2_Real
}


Map1_Down(){
	case $location in
	57 ) ;;
	58 ) ;;
	59 ) ;;
	60 ) ;;
	61 ) ;;
	62 ) ;;
	63 ) ;;	
	64 ) ;;
	*  ) location=$(($location+8)) ;;
	esac
	Cursor_Move
	Map1_Real
}

Map2_Down(){
	case $location in
	57 ) ;;
	58 ) ;;
	59 ) ;;
	60 ) ;;
	61 ) ;;
	62 ) ;;
	63 ) ;;	
	64 ) ;;
	*  ) location=$(($location+8)) ;;
	esac
	Cursor_Move2
	Map2_Real
}

Map1_Left(){
	case $location in
	1 ) ;;
	9 ) ;;
	17 ) ;;
	25 ) ;;
	33 ) ;;
	41 ) ;;
	49 ) ;;	
	57 ) ;;
	*  ) location=$(($location-1)) ;;
	esac
	Cursor_Move
	Map1_Real
}

Map2_Left(){
	case $location in
	1 ) ;;
	9 ) ;;
	17 ) ;;
	25 ) ;;
	33 ) ;;
	41 ) ;;
	49 ) ;;	
	57 ) ;;
	*  ) location=$(($location-1)) ;;
	esac

	Cursor_Move2
	Map2_Real
}

Map1_Right(){
	case $location in
	8 ) ;;
	16 ) ;;
	24 ) ;;
	32 ) ;;
	40 ) ;;
	48 ) ;;
	56 ) ;;	
	64 ) ;;
	*  ) location=$(($location+1)) ;;
	esac
	Cursor_Move
	Map1_Real
}

Map2_Right(){
	case $location in
	8 ) ;;
	16 ) ;;
	24 ) ;;
	32 ) ;;
	40 ) ;;
	48 ) ;;
	56 ) ;;	
	64 ) ;;
	*  ) location=$(($location+1)) ;;
	esac
	Cursor_Move2
	Map2_Real
}

white="\033[107m   \033[0m"

Cursor_Move(){
	
 Make_Default
 case $location in
      1) if [[ "$a1" != "$blue" ]]; then
      		a1=$white 
	 fi	;; 
	 
      2) if [[ "$a2" != "$blue" ]]; then
		a2=$white 
	 fi     ;;  
	 
      3) if [[ "$a3" != "$blue" ]]; then
		a3=$white 
	 fi     ;;  
	 
      4) if [[ "$a4" != "$blue" ]]; then
		a4=$white 
	 fi     ;;  
		 
      5) if [[ "$a5" != "$blue" ]]; then
		a5=$white 
	 fi     ;;  
	 
      6) if [[ "$a6" != "$blue" ]]; then
		a6=$white 
	 fi     ;;  
	 
      7) if [[ "$a7" != "$blue" ]]; then
		a7=$white 
 	 fi     ;;  
	 
      8) if [[ "$a8" != "$blue" ]]; then
		a8=$white 
	 fi     ;;  
	 
      9) if [[ "$b1" != "$blue" ]]; then
	        b1=$white 
	 fi     ;;  
	 
      10) if [[ "$b2" != "$blue" ]]; then
		b2=$white 
	 fi     ;;  
	 
      11) if [[ "$b3" != "$blue" ]]; then
		b3=$white 
	 fi     ;;  
	 
      12) if [[ "$b4" != "$blue" ]]; then
		b4=$white 
	 fi     ;;           
	 
      13) if [[ "$b5" != "$blue" ]]; then
		b5=$white 
	 fi     ;;    
		 
      14) if [[ "$b6" != "$blue" ]]; then
		b6=$white 
	 fi     ;;   
		 
      15) if [[ "$b7" != "$blue" ]]; then
		b7=$white 
	 fi     ;;   
		 
      16) if [[ "$b8" != "$blue" ]]; then
		b8=$white 
	 fi     ;;   
		 
      17) if [[ "$c1" != "$blue" ]]; then
		c1=$white 
	 fi     ;;   
		 
      18) if [[ "$c2" != "$blue" ]]; then
		c2=$white 
	 fi     ;;   
		 
      19) if [[ "$c3" != "$blue" ]]; then
		c3=$white 
	 fi     ;; 
	 
      20) if [[ "$c4" != "$blue" ]]; then
      		c4=$white 
	 fi	;; 
	 
      21) if [[ "$c5" != "$blue" ]]; then
		c5=$white 
	 fi     ;;  
	 
      22) if [[ "$c6" != "$blue" ]]; then
		c6=$white 
	 fi     ;;  
	 
      23) if [[ "$c7" != "$blue" ]]; then
		c7=$white 
	 fi     ;;  
		 
      24) if [[ "$c8" != "$blue" ]]; then
		c8=$white 
	 fi     ;;  
	 
      25) if [[ "$d1" != "$blue" ]]; then
		d1=$white 
	 fi     ;;  
	 
      26) if [[ "$d2" != "$blue" ]]; then
		d2=$white 
 	 fi     ;;  
	 
      27) if [[ "$d3" != "$blue" ]]; then
		d3=$white 
	 fi     ;;  
	 
      28) if [[ "$d4" != "$blue" ]]; then
	    d4=$white 
	 fi     ;;  
	 
      29) if [[ "$d5" != "$blue" ]]; then
		d5=$white 
	 fi     ;;  
	 
      30) if [[ "$d6" != "$blue" ]]; then
		d6=$white 
	 fi     ;;  
	 
      31) if [[ "$d7" != "$blue" ]]; then
		d7=$white 
	 fi     ;;           
	 
      32) if [[ "$d8" != "$blue" ]]; then
		d8=$white 
	 fi     ;;    
		 
      33) if [[ "$e1" != "$blue" ]]; then
		e1=$white 
	 fi     ;;   
		 
      34) if [[ "$e2" != "$blue" ]]; then
		e2=$white 
	 fi     ;;   
		 
      35) if [[ "$e3" != "$blue" ]]; then
		e3=$white 
	 fi     ;;   
		 
      36) if [[ "$e4" != "$blue" ]]; then
		e4=$white 
	 fi     ;;   
		 
      37) if [[ "$e5" != "$blue" ]]; then
		e5=$white 
	 fi     ;; 
	 
      38) if [[ "$e6" != "$blue" ]]; then
		e6=$white 
	 fi     ;;  
	 
      39) if [[ "$e7" != "$blue" ]]; then
		e7=$white 
	 fi     ;;  
	 
      40) if [[ "$e8" != "$blue" ]]; then
		e8=$white 
	 fi     ;;  
		 
      41) if [[ "$f1" != "$blue" ]]; then
		f1=$white 
	 fi     ;;  
	 
      42) if [[ "$f2" != "$blue" ]]; then
		f2=$white 
	 fi     ;;  
	 
      43) if [[ "$f3" != "$blue" ]]; then
		f3=$white 
 	 fi     ;;  
	 
      44) if [[ "$f4" != "$blue" ]]; then
		f4=$white 
	 fi     ;;  
	 
      45) if [[ "$f5" != "$blue" ]]; then
	        f5=$white 
	 fi     ;;  
	 
      46) if [[ "$f6" != "$blue" ]]; then
		f6=$white 
	 fi     ;;  
	 
      47) if [[ "$f7" != "$blue" ]]; then
		f7=$white 
	 fi     ;;  
	 
      48) if [[ "$f8" != "$blue" ]]; then
		f8=$white 
	 fi     ;;           
	 
      49) if [[ "$g1" != "$blue" ]]; then
		g1=$white 
	 fi     ;;    
		 
      50) if [[ "$g2" != "$blue" ]]; then
		g2=$white 
	 fi     ;;   
		 
      51) if [[ "$g3" != "$blue" ]]; then
		g3=$white 
	 fi     ;;   
		 
      52) if [[ "$g4" != "$blue" ]]; then
		g4=$white 
	 fi     ;;   
		 
      53) if [[ "$g5" != "$blue" ]]; then
		g5=$white 
	 fi     ;;   
		 
      54) if [[ "$g6" != "$blue" ]]; then
		g6=$white 
	 fi     ;;
	 
      55) if [[ "$g7" != "$blue" ]]; then
		g7=$white 
	 fi     ;;  
	 
      56) if [[ "$g8" != "$blue" ]]; then
		g8=$white 
	 fi     ;;  
		 
      57) if [[ "$h1" != "$blue" ]]; then
		h1=$white 
	 fi     ;;  
	 
      58) if [[ "$h2" != "$blue" ]]; then
		h2=$white 
	 fi     ;;  
	 
      59) if [[ "$h3" != "$blue" ]]; then
		h3=$white 
 	 fi     ;;  
	 
      60) if [[ "$h4" != "$blue" ]]; then
		h4=$white 
	 fi     ;;  
	 
      61) if [[ "$h5" != "$blue" ]]; then
	        h5=$white 
	 fi     ;;  
	 
      62) if [[ "$h6" != "$blue" ]]; then
		h6=$white 
	 fi     ;;  
	 
      63) if [[ "$h7" != "$blue" ]]; then
		h7=$white 
	 fi     ;;  
	 
      64) if [[ "$h8" != "$blue" ]]; then
		h8=$white 
	 fi     ;;           
	      
	         
esac
}

Cursor_Move2(){
	
 Make_Default2

 case $location in
      1) if [[ "$a1" != "$blue" ]]; then
      		a1=$white 
	 fi	;; 
	 
      2) if [[ "$a2" != "$blue" ]]; then
		a2=$white 
	 fi     ;;  
	 
      3) if [[ "$a3" != "$blue" ]]; then
		a3=$white 
	 fi     ;;  
	 
      4) if [[ "$a4" != "$blue" ]]; then
		a4=$white 
	 fi     ;;  
		 
      5) if [[ "$a5" != "$blue" ]]; then
		a5=$white 
	 fi     ;;  
	 
      6) if [[ "$a6" != "$blue" ]]; then
		a6=$white 
	 fi     ;;  
	 
      7) if [[ "$a7" != "$blue" ]]; then
		a7=$white 
 	 fi     ;;  
	 
      8) if [[ "$a8" != "$blue" ]]; then
		a8=$white 
	 fi     ;;  
	 
      9) if [[ "$b1" != "$blue" ]]; then
	        b1=$white 
	 fi     ;;  
	 
      10) if [[ "$b2" != "$blue" ]]; then
		b2=$white 
	 fi     ;;  
	 
      11) if [[ "$b3" != "$blue" ]]; then
		b3=$white 
	 fi     ;;  
	 
      12) if [[ "$b4" != "$blue" ]]; then
		b4=$white 
	 fi     ;;           
	 
      13) if [[ "$b5" != "$blue" ]]; then
		b5=$white 
	 fi     ;;    
		 
      14) if [[ "$b6" != "$blue" ]]; then
		b6=$white 
	 fi     ;;   
		 
      15) if [[ "$b7" != "$blue" ]]; then
		b7=$white 
	 fi     ;;   
		 
      16) if [[ "$b8" != "$blue" ]]; then
		b8=$white 
	 fi     ;;   
		 
      17) if [[ "$c1" != "$blue" ]]; then
		c1=$white 
	 fi     ;;   
		 
      18) if [[ "$c2" != "$blue" ]]; then
		c2=$white 
	 fi     ;;   
		 
      19) if [[ "$c3" != "$blue" ]]; then
		c3=$white 
	 fi     ;; 
	 
      20) if [[ "$c4" != "$blue" ]]; then
      		c4=$white 
	 fi	;; 
	 
      21) if [[ "$c5" != "$blue" ]]; then
		c5=$white 
	 fi     ;;  
	 
      22) if [[ "$c6" != "$blue" ]]; then
		c6=$white 
	 fi     ;;  
	 
      23) if [[ "$c7" != "$blue" ]]; then
		c7=$white 
	 fi     ;;  
		 
      24) if [[ "$c8" != "$blue" ]]; then
		c8=$white 
	 fi     ;;  
	 
      25) if [[ "$d1" != "$blue" ]]; then
		d1=$white 
	 fi     ;;  
	 
      26) if [[ "$d2" != "$blue" ]]; then
		d2=$white 
 	 fi     ;;  
	 
      27) if [[ "$d3" != "$blue" ]]; then
		d3=$white 
	 fi     ;;  
	 
      28) if [[ "$d4" != "$blue" ]]; then
	    d4=$white 
	 fi     ;;  
	 
      29) if [[ "$d5" != "$blue" ]]; then
		d5=$white 
	 fi     ;;  
	 
      30) if [[ "$d6" != "$blue" ]]; then
		d6=$white 
	 fi     ;;  
	 
      31) if [[ "$d7" != "$blue" ]]; then
		d7=$white 
	 fi     ;;           
	 
      32) if [[ "$d8" != "$blue" ]]; then
		d8=$white 
	 fi     ;;    
		 
      33) if [[ "$e1" != "$blue" ]]; then
		e1=$white 
	 fi     ;;   
		 
      34) if [[ "$e2" != "$blue" ]]; then
		e2=$white 
	 fi     ;;   
		 
      35) if [[ "$e3" != "$blue" ]]; then
		e3=$white 
	 fi     ;;   
		 
      36) if [[ "$e4" != "$blue" ]]; then
		e4=$white 
	 fi     ;;   
		 
      37) if [[ "$e5" != "$blue" ]]; then
		e5=$white 
	 fi     ;; 
	 
      38) if [[ "$e6" != "$blue" ]]; then
		e6=$white 
	 fi     ;;  
	 
      39) if [[ "$e7" != "$blue" ]]; then
		e7=$white 
	 fi     ;;  
	 
      40) if [[ "$e8" != "$blue" ]]; then
		e8=$white 
	 fi     ;;  
		 
      41) if [[ "$f1" != "$blue" ]]; then
		f1=$white 
	 fi     ;;  
	 
      42) if [[ "$f2" != "$blue" ]]; then
		f2=$white 
	 fi     ;;  
	 
      43) if [[ "$f3" != "$blue" ]]; then
		f3=$white 
 	 fi     ;;  
	 
      44) if [[ "$f4" != "$blue" ]]; then
		f4=$white 
	 fi     ;;  
	 
      45) if [[ "$f5" != "$blue" ]]; then
	        f5=$white 
	 fi     ;;  
	 
      46) if [[ "$f6" != "$blue" ]]; then
		f6=$white 
	 fi     ;;  
	 
      47) if [[ "$f7" != "$blue" ]]; then
		f7=$white 
	 fi     ;;  
	 
      48) if [[ "$f8" != "$blue" ]]; then
		f8=$white 
	 fi     ;;           
	 
      49) if [[ "$g1" != "$blue" ]]; then
		g1=$white 
	 fi     ;;    
		 
      50) if [[ "$g2" != "$blue" ]]; then
		g2=$white 
	 fi     ;;   
		 
      51) if [[ "$g3" != "$blue" ]]; then
		g3=$white 
	 fi     ;;   
		 
      52) if [[ "$g4" != "$blue" ]]; then
		g4=$white 
	 fi     ;;   
		 
      53) if [[ "$g5" != "$blue" ]]; then
		g5=$white 
	 fi     ;;   
		 
      54) if [[ "$g6" != "$blue" ]]; then
		g6=$white 
	 fi     ;;
	 
      55) if [[ "$g7" != "$blue" ]]; then
		g7=$white 
	 fi     ;;  
	 
      56) if [[ "$g8" != "$blue" ]]; then
		g8=$white 
	 fi     ;;  
		 
      57) if [[ "$h1" != "$blue" ]]; then
		h1=$white 
	 fi     ;;  
	 
      58) if [[ "$h2" != "$blue" ]]; then
		h2=$white 
	 fi     ;;  
	 
      59) if [[ "$h3" != "$blue" ]]; then
		h3=$white 
 	 fi     ;;  
	 
      60) if [[ "$h4" != "$blue" ]]; then
		h4=$white 
	 fi     ;;  
	 
      61) if [[ "$h5" != "$blue" ]]; then
	        h5=$white 
	 fi     ;;  
	 
      62) if [[ "$h6" != "$blue" ]]; then
		h6=$white 
	 fi     ;;  
	 
      63) if [[ "$h7" != "$blue" ]]; then
		h7=$white 
	 fi     ;;  
	 
      64) if [[ "$h8" != "$blue" ]]; then
		h8=$white 
	 fi     ;;           
	      
	         
esac
}


Make_Default(){

if [[ "$a1" != "$blue" ]]; then
	a1="   "
fi

if [[ "$a2" != "$blue" ]]; then
	a2="   "
fi

if [[ "$a3" != "$blue" ]]; then
	a3="   "
fi

if [[ "$a4" != "$blue" ]]; then
	a4="   "
fi

if [[ "$a5" != "$blue" ]]; then
	a5="   "
fi

if [[ "$a6" != "$blue" ]]; then
	a6="   "
fi

if [[ "$a7" != "$blue" ]]; then
	a7="   "
fi

if [[ "$a8" != "$blue" ]]; then
	a8="   "
fi

if [[ "$b1" != "$blue" ]]; then
	b1="   "
fi

if [[ "$b2" != "$blue" ]]; then
	b2="   "
fi

if [[ "$b3" != "$blue" ]]; then
	b3="   "
fi

if [[ "$b4" != "$blue" ]]; then
	b4="   "
fi

if [[ "$b5" != "$blue" ]]; then
	b5="   "
fi

if [[ "$b6" != "$blue" ]]; then
	b6="   "
fi

if [[ "$b7" != "$blue" ]]; then
	b7="   "
fi

if [[ "$b8" != "$blue" ]]; then
	b8="   "
fi

if [[ "$c1" != "$blue" ]]; then
	c1="   "
fi

if [[ "$c2" != "$blue" ]]; then
	c2="   "
fi

if [[ "$c3" != "$blue" ]]; then
	c3="   "
fi

if [[ "$c4" != "$blue" ]]; then
	c4="   "
fi

if [[ "$c5" != "$blue" ]]; then
	c5="   "
fi

if [[ "$c6" != "$blue" ]]; then
	c6="   "
fi

if [[ "$c7" != "$blue" ]]; then
	c7="   "
fi

if [[ "$c8" != "$blue" ]]; then
	c8="   "
fi

if [[ "$d1" != "$blue" ]]; then
	d1="   "
fi

if [[ "$d2" != "$blue" ]]; then
	d2="   "
fi

if [[ "$d3" != "$blue" ]]; then
	d3="   "
fi

if [[ "$d4" != "$blue" ]]; then
	d4="   "
fi

if [[ "$d5" != "$blue" ]]; then
	d5="   "
fi

if [[ "$d6" != "$blue" ]]; then
	d6="   "
fi

if [[ "$d7" != "$blue" ]]; then
	d7="   "
fi

if [[ "$d8" != "$blue" ]]; then
	d8="   "
fi

if [[ "$e1" != "$blue" ]]; then
	e1="   "
fi

if [[ "$e2" != "$blue" ]]; then
	e2="   "
fi

if [[ "$e3" != "$blue" ]]; then
	e3="   "
fi

if [[ "$e4" != "$blue" ]]; then
	e4="   "
fi

if [[ "$e5" != "$blue" ]]; then
	e5="   "
fi

if [[ "$e6" != "$blue" ]]; then
	e6="   "
fi

if [[ "$e7" != "$blue" ]]; then
	e7="   "
fi

if [[ "$e8" != "$blue" ]]; then
	e8="   "
fi

if [[ "$f1" != "$blue" ]]; then
	f1="   "
fi

if [[ "$f2" != "$blue" ]]; then
	f2="   "
fi

if [[ "$f3" != "$blue" ]]; then
	f3="   "
fi

if [[ "$f4" != "$blue" ]]; then
	f4="   "
fi

if [[ "$f5" != "$blue" ]]; then
	f5="   "
fi

if [[ "$f6" != "$blue" ]]; then
	f6="   "
fi

if [[ "$f7" != "$blue" ]]; then
	f7="   "
fi

if [[ "$f8" != "$blue" ]]; then
	f8="   "
fi

if [[ "$g1" != "$blue" ]]; then
	g1="   "
fi

if [[ "$g2" != "$blue" ]]; then
	g2="   "
fi

if [[ "$g3" != "$blue" ]]; then
	g3="   "
fi

if [[ "$g4" != "$blue" ]]; then
	g4="   "
fi

if [[ "$g5" != "$blue" ]]; then
	g5="   "
fi

if [[ "$g6" != "$blue" ]]; then
	g6="   "
fi

if [[ "$g7" != "$blue" ]]; then
	g7="   "
fi

if [[ "$g8" != "$blue" ]]; then
	g8="   "
fi

if [[ "$h1" != "$blue" ]]; then
	h1="   "
fi

if [[ "$h2" != "$blue" ]]; then
	h2="   "
fi

if [[ "$h3" != "$blue" ]]; then
	h3="   "
fi

if [[ "$h4" != "$blue" ]]; then
	h4="   "
fi

if [[ "$h5" != "$blue" ]]; then
	h5="   "
fi

if [[ "$h6" != "$blue" ]]; then
	h6="   "
fi

if [[ "$h7" != "$blue" ]]; then
	h7="   "
fi

if [[ "$h8" != "$blue" ]]; then
	h8="   "
fi

}

yellow="\033[103m   \033[0m"


Make_Default2(){

if [[ "$a1" != "$blue" ]]; then
	a1="   "
fi

if [[ "$a2" != "$blue" ]]; then
	a2="   "
fi

if [[ "$a3" != "$blue" ]]; then
	a3="   "
fi

if [[ "$a4" != "$blue" ]]; then
	a4="   "
fi

if [[ "$a5" != "$blue" ]]; then
	a5="   "
fi

if [[ "$a6" != "$blue" ]]; then
	a6="   "
fi

if [[ "$a7" != "$blue" ]]; then
	a7="   "
fi

if [[ "$a8" != "$blue" ]]; then
	a8="   "
fi

if [[ "$b1" != "$blue" ]]; then
	b1="   "
fi

if [[ "$b2" != "$blue" ]]; then
	b2=$yellow
fi

if [[ "$b3" != "$blue" ]]; then
	b3="   "
fi

if [[ "$b4" != "$blue" ]]; then
	b4="   "
fi

if [[ "$b5" != "$blue" ]]; then
	b5="   "
fi

if [[ "$b6" != "$blue" ]]; then
	b6="   "
fi

if [[ "$b7" != "$blue" ]]; then
	b7=$yellow
fi

if [[ "$b8" != "$blue" ]]; then
	b8="   "
fi

if [[ "$c1" != "$blue" ]]; then
	c1="   "
fi

if [[ "$c2" != "$blue" ]]; then
	c2="   "
fi

if [[ "$c3" != "$blue" ]]; then
	c3=$yellow
fi

if [[ "$c4" != "$blue" ]]; then
	c4="   "
fi

if [[ "$c5" != "$blue" ]]; then
	c5="   "
fi

if [[ "$c6" != "$blue" ]]; then
	c6=$yellow
fi

if [[ "$c7" != "$blue" ]]; then
	c7="   "
fi

if [[ "$c8" != "$blue" ]]; then
	c8="   "
fi

if [[ "$d1" != "$blue" ]]; then
	d1="   "
fi

if [[ "$d2" != "$blue" ]]; then
	d2="   "
fi

if [[ "$d3" != "$blue" ]]; then
	d3="   "
fi

if [[ "$d4" != "$blue" ]]; then
	d4=$yellow
fi

if [[ "$d5" != "$blue" ]]; then
	d5=$yellow
fi

if [[ "$d6" != "$blue" ]]; then
	d6="   "
fi

if [[ "$d7" != "$blue" ]]; then
	d7="   "
fi

if [[ "$d8" != "$blue" ]]; then
	d8="   "
fi

if [[ "$e1" != "$blue" ]]; then
	e1="   "
fi

if [[ "$e2" != "$blue" ]]; then
	e2="   "
fi

if [[ "$e3" != "$blue" ]]; then
	e3="   "
fi

if [[ "$e4" != "$blue" ]]; then
	e4=$yellow
fi

if [[ "$e5" != "$blue" ]]; then
	e5=$yellow
fi

if [[ "$e6" != "$blue" ]]; then
	e6="   "
fi

if [[ "$e7" != "$blue" ]]; then
	e7="   "
fi

if [[ "$e8" != "$blue" ]]; then
	e8="   "
fi

if [[ "$f1" != "$blue" ]]; then
	f1="   "
fi

if [[ "$f2" != "$blue" ]]; then
	f2="   "
fi

if [[ "$f3" != "$blue" ]]; then
	f3=$yellow
fi

if [[ "$f4" != "$blue" ]]; then
	f4="   "
fi

if [[ "$f5" != "$blue" ]]; then
	f5="   "
fi

if [[ "$f6" != "$blue" ]]; then
	f6=$yellow
fi

if [[ "$f7" != "$blue" ]]; then
	f7="   "
fi

if [[ "$f8" != "$blue" ]]; then
	f8="   "
fi

if [[ "$g1" != "$blue" ]]; then
	g1="   "
fi

if [[ "$g2" != "$blue" ]]; then
	g2=$yellow
fi

if [[ "$g3" != "$blue" ]]; then
	g3="   "
fi

if [[ "$g4" != "$blue" ]]; then
	g4="   "
fi

if [[ "$g5" != "$blue" ]]; then
	g5="   "
fi

if [[ "$g6" != "$blue" ]]; then
	g6="   "
fi

if [[ "$g7" != "$blue" ]]; then
	g7=$yellow
fi

if [[ "$g8" != "$blue" ]]; then
	g8="   "
fi

if [[ "$h1" != "$blue" ]]; then
	h1="   "
fi

if [[ "$h2" != "$blue" ]]; then
	h2="   "
fi

if [[ "$h3" != "$blue" ]]; then
	h3="   "
fi

if [[ "$h4" != "$blue" ]]; then
	h4="   "
fi

if [[ "$h5" != "$blue" ]]; then
	h5="   "
fi

if [[ "$h6" != "$blue" ]]; then
	h6="   "
fi

if [[ "$h7" != "$blue" ]]; then
	h7="   "
fi

if [[ "$h8" != "$blue" ]]; then
	h8="   "
fi

}

Logo_MapSelect(){
clear

echo '                     _  _____  _     __  ____  __    '
echo '                    / \|_   _|/ \    \ \/ /\ \/ /    '
echo '                   / _ \ | | / _ \    \  /  \  /     '    
echo '                  / ___ \| |/ ___ \   /  \  /  \     '
echo '                 /_/   \_\_/_/   \_\ /_/\_\/_/\_\    '    
echo '         __  __    _    ____    ____  _____ _     _____ ____ _____  '
echo '        |  \/  |  / \  |  _ \  / ___|| ____| |   | ____/ ___|_   _| '
echo '        | |\/| | / _ \ | |_) | \___ \|  _| | |   |  _|| |     | |   ' 
echo '        | |  | |/ ___ \|  __/   ___) | |___| |___| |__| |___  | |   '
echo '        |_|  |_/_/   \_\_|     |____/|_____|_____|_____\____| |_|   '
echo ' '

echo -e "    \u250C$w\u252C$w\u252C$w\u252C$w\u252C$w\u252C$w\u252C$w\u252C$w\u2510      \u250C$w\u252C$w\u252C$w\u252C$w\u252C$w\u252C$w\u252C$w\u252C$w\u2510"
echo -e "    \u2502$a1\u2502$a2\u2502$a3\u2502$a4\u2502$a5\u2502$a6\u2502$a7\u2502$a8\u2502      \u2502$a1\u2502$a2\u2502$a3\u2502$a4\u2502$a5\u2502$a6\u2502$a7\u2502$a8\u2502"
echo -e "    \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524      \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "    \u2502$b1\u2502$b2\u2502$b3\u2502$b4\u2502$b5\u2502$b6\u2502$b7\u2502$b8\u2502      \u2502$b1\u2502$yellow\u2502$b3\u2502$b4\u2502$b5\u2502$b6\u2502$yellow\u2502$b8\u2502"
echo -e "    \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524      \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "    \u2502$c1\u2502$c2\u2502$c3\u2502$c4\u2502$c5\u2502$c6\u2502$c7\u2502$c8\u2502      \u2502$c1\u2502$c2\u2502$yellow\u2502$c4\u2502$c5\u2502$yellow\u2502$c7\u2502$c8\u2502"
echo -e "    \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524      \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "    \u2502$d1\u2502$d2\u2502$d3\u2502$d4\u2502$d5\u2502$d6\u2502$d7\u2502$d8\u2502      \u2502$d1\u2502$d2\u2502$d3\u2502$yellow\u2502$yellow\u2502$d6\u2502$d7\u2502$d8\u2502"
echo -e "    \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524      \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "    \u2502$e1\u2502$e2\u2502$e3\u2502$e4\u2502$e5\u2502$e6\u2502$e7\u2502$e8\u2502      \u2502$e1\u2502$e2\u2502$e3\u2502$yellow\u2502$yellow\u2502$e6\u2502$e7\u2502$e8\u2502"
echo -e "    \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524      \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "    \u2502$f1\u2502$f2\u2502$f3\u2502$f4\u2502$f5\u2502$f6\u2502$f7\u2502$f8\u2502      \u2502$f1\u2502$f2\u2502$yellow\u2502$f4\u2502$f5\u2502$yellow\u2502$f7\u2502$f8\u2502"
echo -e "    \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524      \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "    \u2502$g1\u2502$g2\u2502$g3\u2502$g4\u2502$g5\u2502$g6\u2502$g7\u2502$g8\u2502      \u2502$g1\u2502$yellow\u2502$g3\u2502$g4\u2502$g5\u2502$g6\u2502$yellow\u2502$g8\u2502"
echo -e "    \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524      \u251C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u253C$w\u2524"
echo -e "    \u2502$h1\u2502$h2\u2502$h3\u2502$h4\u2502$h5\u2502$h6\u2502$h7\u2502$h8\u2502      \u2502$h1\u2502$h2\u2502$h3\u2502$h4\u2502$h5\u2502$h6\u2502$h7\u2502$h8\u2502"
echo -e "    \u2514$w\u2534$w\u2534$w\u2534$w\u2534$w\u2534$w\u2534$w\u2534$w\u2518      \u2514$w\u2534$w\u2534$w\u2534$w\u2534$w\u2534$w\u2534$w\u2534$w\u2518"

}

MapSelect(){

Logo_MapSelect

echo -e "                \033[44m   MAP1   \033[0m                        \033[44m   MAP2   \033[0m"
 

read -rsn1 mode

if [[ $mode == $escape_char ]]; then
	MapSelect_Map1

	while [ 1 ]
		do
			MapSelect_InputForMap1
		done
fi 

}

MapSelect_Map1(){

Logo_MapSelect

echo -e "                \033[41m   MAP1   \033[0m                        \033[44m   MAP2   \033[0m"

MapSelect_InputForMap1

}

MapSelect_Map2(){

Logo_MapSelect

echo -e "                \033[44m   MAP1   \033[0m                        \033[41m   MAP2   \033[0m"

MapSelect_InputForMap2

}

MapSelect_InputForMap1(){

read -rsn1 mode

if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	Map1_Prepare
fi

case $mode in
	'[C' ) MapSelect_Map2 ;;       #right 
	'[D' ) MapSelect_Map2 ;;       #left
esac

}


MapSelect_InputForMap2(){

read -rsn1 mode

if [[ $mode == $escape_char ]]; then
	read -rsn2 mode
elif [[ $mode = "" ]]; then
	Map2_Prepare
fi

case $mode in
	'[C' ) MapSelect_Map1 ;;       #right 
	'[D' ) MapSelect_Map1 ;;       #left
esac

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
	MapSelect
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
