#!/bin/bash
#Develop by Daniel Batalha <daniel.p.batalha@sapo.pt>
#Depracated


#shell output colors.
STYLE_NORMAL='\E[0m'
COLOR_RED='\E[31m'

function warn(){
#Functions colors, make colors appers.
	echo -n -e $COLOR_RED
	echo $1
        echo -n -e $STYLE_NORMAL
}
function callboot(){
	echo -en "\033[1mBot Config $> \033[0m"
		read OPT_CONSOLE
case $OPT_CONSOLE in
	"auto") echo "Auto tweet"
		autotweet
		;;
	"manual") echo "Manual Configuration"
		manualtweet
		;;
	"setconfig")echo "Configuration set"
		sendtoclipboard
		;;
	esac
}
function sendtoclipboard(){
cp -a bot.xml ricasbot

cp -a bot.xml peterbot

cp -a bot.xml Richardbot

cp -a bot.xml Jasonbot

cp -a bot.xml rayanbot

cp -a bot.xml marizabot

cp -a bot.xml fredbot

cp -a bot.xml braianbot

callboot
}
function autotweet(){
warn "Running Bot 1"
bash /home/daniel/twitterbot/shellbot/Jasonbot/botdavid.sh
for (( o=0 ; o<=80 ; o++ ))
do
	echo -n "====="
	sleep 1
done
warn "Running Bot 2"
bash /home/daniel/twitterbot/shellbot/Richardbot/richardbot.sh
for (( t=0 ; t<=60 ; t++ ))
do
	echo -n "====="
	sleep 1
done
warn "Running Bot 3"
bash /home/daniel/twitterbot/shellbot/peterbot/peterbot.sh
for (( p=0 ; p<=80 ; p++ ))
do
	echo -n "====="
	sleep 1
done
warn "Running Bot 4"
bash /home/daniel/twitterbot/shellbot/rayanbot/rayanbot.sh
for (( l=0 ; l<=200 ; l++ ))
do
	echo -n "====="
	sleep 1
done
warn "Running Bot 5"
bash /home/daniel/twitterbot/shellbot/marizabot/marizabot.sh
for (( k=0 ; k<=100 ; k++ ))
do
	echo -n "====="
	sleep 1
done

warn "Running Bot 6"
bash /home/daniel/twitterbot/shellbot/fredbot/fredbot.sh
for (( g=0 ; g<=400 ; g++ ))
do
	echo -n "====="
	sleep 1
done

warn "Running Bot 7"
bash /home/daniel/twitterbot/shellbot/braianbot/braian.sh
for (( h=0 ; h<=200 ; h++ ))
do
	echo -n "====="
	sleep 1
done
warn "Running Bot 8"
bash /home/daniel/twitterbot/shellbot/ricasbot/ricasbot.sh
}
callboot

