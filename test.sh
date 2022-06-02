#!/bin/bash

escape_char=$(printf "\u1b")
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


Map2_Prepare
