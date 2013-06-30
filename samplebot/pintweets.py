#!/usr/bin/env python
#Random Twitter bots, Daniel Batalha
#Gerate the pint token access "Depracated"

import tweepy

CONSUMER_KEY = '(Replace with your custmer key)'
CONSUMER_SECRET = '(Replace with your costumer secret)'

auth = tweepy.OAuthHandler(CONSUMER_KEY, CONSUMER_SECRET)
auth_url = auth.get_authorization_url()
print 'Please authorize: ' + auth_url
verifier = raw_input('PIN: ').strip()
auth.get_access_token(verifier)
print "ACCESS_KEY = '%s'" % auth.access_token.key
print "ACCESS_SECRET = '%s'" % auth.access_token.secret
