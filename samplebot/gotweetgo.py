#!/usr/bin/env python
#Random Bots by Daniel Batalha
#Insert you twitter api details


import sys
import tweepy

CONSUMER_KEY = '(CostumerKey)'
CONSUMER_SECRET = '(SecretKey)'
ACCESS_KEY = '(AccessKey)'
ACCESS_SECRET = '(AccessSecreyKey)'

auth = tweepy.OAuthHandler(CONSUMER_KEY, CONSUMER_SECRET)
auth.set_access_token(ACCESS_KEY, ACCESS_SECRET)
api = tweepy.API(auth)
api.update_status(sys.argv[1])

