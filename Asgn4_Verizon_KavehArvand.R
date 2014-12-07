#Load the required packages
library("twitteR")
library("wordcloud")
library("tm")
library("RColorBrewer")
library("ggplot2") 

#Loading the key and secret code for my twitter application
#It will not work on other applications
my.key <-"0FdgOypGs736tEP0GPRkQtAOH"
my.secret <-"GlnmoViKrXIcoF0JHg5HEPKX4BxVPWa0zoQE8KZIdsewaO1OZs"
cred <- OAuthFactory$new(consumerKey=my.key,
                         consumerSecret=my.secret,
                         requestURL='https://api.twitter.com/oauth/request_token',
                         accessURL='https://api.twitter.com/oauth/access_token',
                         authURL= 'https://api.twitter.com/oauth/authorize')
cred$handshake(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl"))
save(cred, file="twitter_authentication.Rdata")
cred$handshake()
registerTwitterOAuth(cred)

cred$handshake()

load("~/IT478/twitter_authentication.Rdata")

# check that authorization was successful

registerTwitterOAuth(cred)


#Day 1 : 01-12-2014

#Mine the tweets about Verizon for day1
tweetsday1 <- searchTwitter("@Verizon",n=200, lang="en", since='2014-12-01', until='2014-12-02')

#Extracting the required fields
tweetsday1.id <- sapply(tweetsday1, function(x) x$getId())
tweetsday1.text <- sapply(tweetsday1, function(x) x$getText())
tweetsday1.screenname <- sapply(tweetsday1, function(x) x$getScreenName())
tweetsday1.isretweet <- sapply(tweetsday1, function(x) x$getIsRetweet())
tweetsday1.retweeted <- sapply(tweetsday1, function(x) x$getRetweeted())
tweetsday1.created <- sapply(tweetsday1, function(x) x$getCreated())

#Create a dataframe of the required tweet data and write it into a text file for day 1
df.day1 <- data.frame(tweetsday1.id, tweetsday1.text, tweetsday1.screenname, tweetsday1.isretweet, tweetsday1.retweeted, tweetsday1.created)
names(df.day1) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df.day1, file = "Verizonday1.txt")


#Day 2 : 02-12-2014

#Mine the tweets about Verizon for day2
tweetsday2 <- searchTwitter("@Verizon",n=200, lang="en", since='2014-12-02', until='2014-12-03')

#Extracting the required fields
tweetsday2.id <- sapply(tweetsday2, function(x) x$getId())
tweetsday2.text <- sapply(tweetsday2, function(x) x$getText())
tweetsday2.screenname <- sapply(tweetsday2, function(x) x$getScreenName())
tweetsday2.isretweet <- sapply(tweetsday2, function(x) x$getIsRetweet())
tweetsday2.retweeted <- sapply(tweetsday2, function(x) x$getRetweeted())
tweetsday2.created <- sapply(tweetsday2, function(x) x$getCreated())

#Create a dataframe of the required tweet data and write it into a text file for day 2
df.day2 <- data.frame(tweetsday2.id, tweetsday2.text, tweetsday2.screenname, tweetsday2.isretweet, tweetsday2.retweeted, tweetsday2.created)
names(df.day2) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df.day2, file = "Verizonday2.txt")

#Day 3 : 03-12-2014

#Mine the tweets about Verizon for day3
tweetsday3 <- searchTwitter("@Verizon",n=200, lang="en", since='2014-12-03', until='2014-12-04')

#Extracting the required fields
tweetsday3.id <- sapply(tweetsday3, function(x) x$getId())
tweetsday3.text <- sapply(tweetsday3, function(x) x$getText())
tweetsday3.screenname <- sapply(tweetsday3, function(x) x$getScreenName())
tweetsday3.isretweet <- sapply(tweetsday3, function(x) x$getIsRetweet())
tweetsday3.retweeted <- sapply(tweetsday3, function(x) x$getRetweeted())
tweetsday3.created <- sapply(tweetsday3, function(x) x$getCreated())

#Create a dataframe of the required tweet data and write it into a text file for day 3
df.day3 <- data.frame(tweetsday3.id, tweetsday3.text, tweetsday3.screenname, tweetsday3.isretweet, tweetsday3.retweeted, tweetsday3.created)

names(df.day3) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df.day3, file = "Verizonday3.txt")


#Day 4 : 04-12-2014

#Mine the tweets about Verizon for day4
tweetsday4 <- searchTwitter("@Verizon",n=200, lang="en", since='2014-12-04', until='2014-12-05')

#Extracting the required fields
tweetsday4.id <- sapply(tweetsday4, function(x) x$getId())
tweetsday4.text <- sapply(tweetsday4, function(x) x$getText())
tweetsday4.screenname <- sapply(tweetsday4, function(x) x$getScreenName())
tweetsday4.isretweet <- sapply(tweetsday4, function(x) x$getIsRetweet())
tweetsday4.retweeted <- sapply(tweetsday4, function(x) x$getRetweeted())
tweetsday4.created <- sapply(tweetsday4, function(x) x$getCreated())

#Create a dataframe of the required tweet data and write it into a text file for day 3
df.day4 <- data.frame(tweetsday4.id, tweetsday4.text, tweetsday4.screenname, tweetsday4.isretweet, tweetsday4.retweeted, tweetsday4.created)

names(df.day4) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df.day4, file = "Verizonday4.txt")


#Day 5 : 05-12-2014

#Mine the tweets about Verizon for day5
tweetsday5 <- searchTwitter("@Verizon",n=200, lang="en", since='2014-12-05', until='2014-12-06')

#Extracting the required fields
tweetsday5.id <- sapply(tweetsday5, function(x) x$getId())
tweetsday5.text <- sapply(tweetsday5, function(x) x$getText())
tweetsday5.screenname <- sapply(tweetsday5, function(x) x$getScreenName())
tweetsday5.isretweet <- sapply(tweetsday5, function(x) x$getIsRetweet())
tweetsday5.retweeted <- sapply(tweetsday5, function(x) x$getRetweeted())
tweetsday5.created <- sapply(tweetsday5, function(x) x$getCreated())

#Create a dataframe of the required tweet data and write it into a text file for day 5
df.day5 <- data.frame(tweetsday5.id, tweetsday5.text, tweetsday5.screenname, tweetsday5.isretweet, tweetsday5.retweeted, tweetsday5.created)
names(df.day5) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df.day5, file = "Verizonday5.txt")



