library("twitteR")
library("wordcloud")
library("tm")
library("ggplot2")

my.key<-"onD4Pm46NRfr5ElPWTV5I0Thj"
my.secret<-"PaulKcYaimsWhhgLNll6ZVOauYxnCi8NiDLrsN4MqSbGpB5zsq"

cred<-OAuthFactory$new(consumerKey=my.key, 
                       consumerSecret=my.secret,
                       requestURL='https://api.twitter.com/oauth/request_token',
                       accessURL='https://api.twitter.com/oauth/access_token',
                       authURL='https://api.twitter.com/oauth/authorize')

## save the credentials to your local drive
## on future uses of the script you'll only need to load the .Rdata
## file and won't have to re-authorize your account
save(cred, file="twitter_authentication.Rdata")
## load("twitter_authentication.Rdata")
cred$handshake()

## check that authorization was successful
registerTwitterOAuth(cred)


## DAY 1

## tweets <- searchTwitter("@Amazon",n=500)
tweets1<-searchTwitter("@Amazon", n=500, lang="en", 
                      since='2014-11-24', until='2014-11-25')
length(tweets1)

## Now, we will extract the fields that we want
tweets1.id<-sapply(tweets1, function(x) x$getId())
tweets1.text<-sapply(tweets1, function(x) x$getText())
tweets1.screenname<- sapply(tweets1, function(x) x$getScreenName())
tweets1.isretweet <- sapply(tweets1, function(x) x$getIsRetweet())
tweets1.retweeted <- sapply(tweets1, function(x) x$getRetweeted())
tweets1.created <- sapply(tweets1, function(x) x$getCreated())

head(tweets1.text)

## Write data to file
df1<-data.frame(tweets1.id, tweets1.text, tweets1.screenname, tweets1.isretweet, tweets1.retweeted, tweets1.created)
names(df1)<-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df1, file="AmazonDay1.txt", append=TRUE)


## DAY 2

tweets2<-searchTwitter("@Amazon", n=500, lang="en", 
                      since='2014-11-25', until='2014-11-26')
length(tweets2)

tweets2.id<-sapply(tweets2, function(x) x$getId())
tweets2.text<-sapply(tweets2, function(x) x$getText())
tweets2.screenname<- sapply(tweets2, function(x) x$getScreenName())
tweets2.isretweet <- sapply(tweets2, function(x) x$getIsRetweet())
tweets2.retweeted <- sapply(tweets2, function(x) x$getRetweeted())
tweets2.created <- sapply(tweets2, function(x) x$getCreated())

head(tweets2.text)

df2<-data.frame(tweets2.id, tweets2.text, tweets2.screenname, tweets2.isretweet, tweets2.retweeted, tweets2.created)
names(df2)<-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df2, file="AmazonDay2.txt", append=TRUE)


## DAY 3

tweets3<-searchTwitter("@Amazon", n=500, lang="en", 
                       since='2014-11-26', until='2014-11-27')
length(tweets3)

tweets3.id<-sapply(tweets3, function(x) x$getId())
tweets3.text<-sapply(tweets3, function(x) x$getText())
tweets3.screenname<- sapply(tweets3, function(x) x$getScreenName())
tweets3.isretweet <- sapply(tweets3, function(x) x$getIsRetweet())
tweets3.retweeted <- sapply(tweets3, function(x) x$getRetweeted())
tweets3.created <- sapply(tweets3, function(x) x$getCreated())

head(tweets3.text)

df3<-data.frame(tweets3.id, tweets3.text, tweets3.screenname, tweets3.isretweet, tweets3.retweeted, tweets3.created)
names(df3)<-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df3, file="AmazonDay3.txt", append=TRUE)


## DAY 4

tweets4<-searchTwitter("@Amazon", n=500, lang="en", 
                       since='2014-11-28', until='2014-11-29')
length(tweets4)

tweets4.id<-sapply(tweets4, function(x) x$getId())
tweets4.text<-sapply(tweets4, function(x) x$getText())
tweets4.screenname<- sapply(tweets4, function(x) x$getScreenName())
tweets4.isretweet <- sapply(tweets4, function(x) x$getIsRetweet())
tweets4.retweeted <- sapply(tweets4, function(x) x$getRetweeted())
tweets4.created <- sapply(tweets4, function(x) x$getCreated())

head(tweets4.text)

df4<-data.frame(tweets4.id, tweets4.text, tweets4.screenname, tweets4.isretweet, tweets4.retweeted, tweets4.created)
names(df4)<-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df4, file="AmazonDay4.txt", append=TRUE)


## DAY 5

tweets5<-searchTwitter("@Amazon", n=500, lang="en", 
                       since='2014-12-01', until='2014-12-02')
length(tweets5)

tweets5.id<-sapply(tweets5, function(x) x$getId())
tweets5.text<-sapply(tweets5, function(x) x$getText())
tweets5.screenname<- sapply(tweets5, function(x) x$getScreenName())
tweets5.isretweet <- sapply(tweets5, function(x) x$getIsRetweet())
tweets5.retweeted <- sapply(tweets5, function(x) x$getRetweeted())
tweets5.created <- sapply(tweets5, function(x) x$getCreated())

head(tweets5.text)

df5<-data.frame(tweets5.id, tweets5.text, tweets5.screenname, tweets5.isretweet, tweets5.retweeted, tweets5.created)
names(df5)<-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df5, file="AmazonDay5.txt", append=TRUE)
