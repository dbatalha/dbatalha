#!/bin/sh
#Random Twitter bots, Daniel Batalha
#Tweet bot.xml "Depracated"


FILE="bot.xml"
LOGIN="(Login)"
PASSWD="(Password)"

#cat $FILE | sed -e 's/<\/tweetmsg>/<\/tweetmsg>\n/g' | sed -n -e 's/.*<tweetmsg>\(.*\)<\/tweetmsg>.*/\1/p' > tweet.dbd
echo "Get first Mention"
mysql -u root -p"password" twitterbots -e " SELECT * FROM mentions ORDER BY RAND() LIMIT 1" > bbb.txt
head -2 bbb.txt | tail -1 >>tweet.dbd
echo "Get secound Mention"
mysql -u root -p"password" twitterbots -e " SELECT * FROM mentions ORDER BY RAND() LIMIT 1" > bbb.txt
head -2 bbb.txt | tail -1 >>tweet.dbd

echo "Get tweets 1"
mysql -u root -p"password" twitterbots -e " SELECT * FROM tweets ORDER BY RAND() LIMIT 1" > mmm.txt
head -2 mmm.txt | tail -1 >>message.dbd
echo "Get tweets 2"
mysql -u root -p"password" twitterbots -e " SELECT * FROM tweets ORDER BY RAND() LIMIT 1" > mmm.txt
head -2 mmm.txt | tail -1 >>message.dbd

MENTION=`head -1 tweet.dbd | tail -1`
MESSAGE=`head -1 message.dbd | tail -1`
                echo "@$MENTION $MESSAGE"
                        python $HOME/bots/samplebot/gotweetgo.py "@$MENTION $MESSAGE"
MENTION=`head -2 tweet.dbd | tail -1`
MESSAGE=`head -2 message.dbd | tail -1`
                echo "@$MENTION $MESSAGE"
                        python $HOME/bots/samplebot/gotweetgo.py "@$MENTION $MESSAGE"
sleep 2

rm tweet.dbd mmm.txt tweet.dbd message.dbd
echo "DONE"

