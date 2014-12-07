#######################################################
## Twitter Sentiment Analysis Assignment:
## Can Twitter Predict Stock Price Movements?
## Firm Chosen: eBay
## Submitted by: Minu Rachel Sabu
#######################################################

#Load all the required packages
library("twitteR")
library("wordcloud")
library("tm")
library("ggplot2")

#Loading the consumer key and consumer secret from my twitter application
#It will not work on other applications
my.key <-"kpOJnwWzI0cifX2utt2ATdgum"
my.secret <-"PlDFRDfOBzqS1PgzfNloCOAGHw9Y07ZqNTjH3v6x2M0e7vy3G1"

cred <- OAuthFactory$new(consumerKey=my.key,
                         consumerSecret=my.secret,
                         requestURL='https://api.twitter.com/oauth/request_token',
                         accessURL='https://api.twitter.com/oauth/access_token',
                         authURL= 'https://api.twitter.com/oauth/authorize')

save(cred, file="twitter_authentication.Rdata")

#Performing the handshake process 
cred$handshake()

#Checking to see if the twitter authentication was successfull
registerTwitterOAuth(cred)

## Day 1 -- 01-12-2014

#Mining for tweets for eBay 
rawtweets.day1<- searchTwitter("@eBay",n=200, lang="en",
                       since='2014-12-01', until='2014-12-02')
#Extracting the fields that we want
tweets.day1.id <- sapply(rawtweets.day1, function(x) x$getId())
tweets.day1.text <- sapply(rawtweets.day1, function(x) x$getText())
tweets.day1.screenname <- sapply(rawtweets.day1, function(x) x$getScreenName())
tweets.day1.isretweet <- sapply(rawtweets.day1, function(x) x$getIsRetweet())
tweets.day1.retweeted <- sapply(rawtweets.day1, function(x) x$getRetweeted())
tweets.day1.created <- sapply(rawtweets.day1, function(x) x$getCreated())

#Create a dataframe of the required tweet data 
#and write it into a text file for day 1
df.day1 <- data.frame(tweets.day1.id, tweets.day1.text, tweets.day1.screenname, tweets.day1.isretweet, tweets.day1.retweeted, tweets.day1.created)
names(df.day1) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df.day1, file = "ebayDay1.txt", append = TRUE)

##Day 2 -- 02-12-2014

#Mining for tweets for eBay
rawtweets.day2<- searchTwitter("@eBay",n=200, lang="en",
                               since='2014-12-02', until='2014-12-03')
#Extracting the fields that we want
tweets.day2.id <- sapply(rawtweets.day2, function(x) x$getId())
tweets.day2.text <- sapply(rawtweets.day2, function(x) x$getText())
tweets.day2.screenname <- sapply(rawtweets.day2, function(x) x$getScreenName())
tweets.day2.isretweet <- sapply(rawtweets.day2, function(x) x$getIsRetweet())
tweets.day2.retweeted <- sapply(rawtweets.day2, function(x) x$getRetweeted())
tweets.day2.created <- sapply(rawtweets.day2, function(x) x$getCreated())

#Create a dataframe of the required tweet data 
#and write it into a text file for day 1
df.day2 <- data.frame(tweets.day2.id, tweets.day2.text, tweets.day2.screenname, 
                      tweets.day2.isretweet, tweets.day2.retweeted, tweets.day2.created)
names(df.day2) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df.day2, file = "ebayDay2.txt", append = TRUE)

##Day 3 -- 03-12-2014

#Mining for tweets for eBay
rawtweets.day3<- searchTwitter("@eBay",n=200, lang="en",
                               since='2014-12-03', until='2014-12-04')
#Extracting the fields that we want
tweets.day3.id <- sapply(rawtweets.day3, function(x) x$getId())
tweets.day3.text <- sapply(rawtweets.day3, function(x) x$getText())
tweets.day3.screenname <- sapply(rawtweets.day3, function(x) x$getScreenName())
tweets.day3.isretweet <- sapply(rawtweets.day3, function(x) x$getIsRetweet())
tweets.day3.retweeted <- sapply(rawtweets.day3, function(x) x$getRetweeted())
tweets.day3.created <- sapply(rawtweets.day3, function(x) x$getCreated())

#Create a dataframe of the required tweet data 
#and write it into a text file for day 3
df.day3 <- data.frame(tweets.day3.id, tweets.day3.text, tweets.day3.screenname, 
                      tweets.day3.isretweet, tweets.day3.retweeted, tweets.day3.created)
names(df.day3) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df.day3, file = "ebayDay3.txt", append = TRUE)

##Day 4 -- 04-12-2014

#Mining for tweets for eBay
rawtweets.day4<- searchTwitter("@eBay",n=200, lang="en",
                               since='2014-12-05', until='2014-12-06')
#Extracting the fields that we want
tweets.day4.id <- sapply(rawtweets.day4, function(x) x$getId())
tweets.day4.text <- sapply(rawtweets.day4, function(x) x$getText())
tweets.day4.screenname <- sapply(rawtweets.day4, function(x) x$getScreenName())
tweets.day4.isretweet <- sapply(rawtweets.day4, function(x) x$getIsRetweet())
tweets.day4.retweeted <- sapply(rawtweets.day4, function(x) x$getRetweeted())
tweets.day4.created <- sapply(rawtweets.day4, function(x) x$getCreated())

#Create a dataframe of the required tweet data 
#and write it into a text file for day 4
df.day4 <- data.frame(tweets.day4.id, tweets.day4.text, tweets.day4.screenname, 
                      tweets.day4.isretweet, tweets.day4.retweeted, tweets.day4.created)
names(df.day4) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df.day4, file = "ebayDay4.txt", append = TRUE)

##Day 5 -- 05-12-2014

#Mining for tweets for eBay
rawtweets.day5<- searchTwitter("@eBay",n=200, lang="en",
                               since='2014-12-01', until='2014-12-02')
#Extracting the fields that we want
tweets.day5.id <- sapply(rawtweets.day5, function(x) x$getId())
tweets.day5.text <- sapply(rawtweets.day5, function(x) x$getText())
tweets.day5.screenname <- sapply(rawtweets.day5, function(x) x$getScreenName())
tweets.day5.isretweet <- sapply(rawtweets.day5, function(x) x$getIsRetweet())
tweets.day5.retweeted <- sapply(rawtweets.day5, function(x) x$getRetweeted())
tweets.day5.created <- sapply(rawtweets.day5, function(x) x$getCreated())

#Create a dataframe of the required tweet data 
#and write it into a text file for day 5
df.day5 <- data.frame(tweets.day5.id, tweets.day5.text, tweets.day5.screenname, 
                      tweets.day5.isretweet, tweets.day5.retweeted, tweets.day5.created)
names(df.day5) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df.day5, file = "ebayDay5.txt", append = TRUE)

