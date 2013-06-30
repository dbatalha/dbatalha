#!/bin/bash

STYLE_NORMAL='\E[0m'
COLOR_RED='\E[31m'
COLOR_BLUE='\e[0;36m'


function warn(){
        echo -n -e $COLOR_RED
	echo $1
	echo -n -e $STYLE_NORMAL
}
function warnblue(){
	echo -en $COLOR_BLUE
	echo $1
	echo -n -e $STYLE_NORMAL
}
warn "Running Ruby Get @Mentions"

ruby scrapper.rb >parced1.txt 

awk -F"[,:]" '{for(i=1;i<=NF;i++){if($i~/from_user\042/){print $(i+0)} } }' parced1.txt >ppp.txt

warn "done"

touch blabla1.txt
cat ppp.txt | cut -d'>' -f2 >blabla1.txt
touch prepared.txt
cat blabla1.txt | cut -d'"' -f2 >>prepared.txt

i=0
while [ $i -lt 1200 ]
do
	MENTIONS=`head -$i prepared.txt | tail -1`
		mysql -u root -p789456 twitterbots -e"insert into mentions values ('$MENTIONS')"
	let i++
done

warn " Removing garbage ....."
rm prepared.txt blabla1.txt ppp.txt parced1.txt parced1.txt 
