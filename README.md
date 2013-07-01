Random Twitter Bot
========
==
  Daniel Batalha
==  
In this tutorial instalation i will show you guys how to install my twitter bots.
The goal of this bots is randomly pick mention from a who tweet or retweet with a certain @mention i.e. a person who tweet something with @minecraft this bot will catch his @twittername. You can optionally match from some other string in a tweet text. The mentions is stored on a Mysql database.

After pick a random tweet from SQL Database and tweet to a random person like "@randomperson random cool tweet". 

Note, this is a Open Source program feel free to use and modify, use it at your own risk.

**Required Software to run this custom bot.**

- Linux Machine.
- Ruby on rails.
- Ruby gems.
- Ruby json gem.
- Ruby fastercsv gem.
- Python3
- Tweepy
- MySQL Database.

## Install all dependencies on Fedora.
Install Python3.
`yum install python3`
Install ruby.
`yum install ruby`
Install the ruby gems.
`yum install gems`
Gems, make sure you install gems as root.
`gem install fastercsv`
`gem install json`
Install tweepy program.
`yum install tweepy`
To install MySQL follow the instructions [Link](http://www.if-not-true-then-false.com/2010/install-mysql-on-fedora-centos-red-hat-rhel/).

## Install all dependencies on Ubuntu.
Install ruby
`sudo apt-get install ruby`
Install ruby gems,
`sudo apt-get install ruby-gems`
Gems, install as root.
`sudo gem install fastercsv`
`sudo gem install json`
Install tweepy program.
`sudo apt-get install tweepy`
Install mysql.
`sudo apt-get install mysql-server`
