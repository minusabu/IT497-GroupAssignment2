library("twitteR")
library("wordcloud")
library("tm")
library("ggplot2")

my.key <-"TeFE2YSh6TqeUP5YWeme3wGRe"
my.secret <-"3kcjEObnOii3QFwx2YVAeZ8KHlv4yzqw2ar5CqY9fXliQqMOyH"
cred <- OAuthFactory$new(consumerKey=my.key,
                         consumerSecret=my.secret,
                         requestURL='https://api.twitter.com/oauth/request_token',
                         accessURL='https://api.twitter.com/oauth/access_token',
                         authURL= 'https://api.twitter.com/oauth/authorize')


save(cred, file="twitter_authentication.Rdata")


## load("twitter_authentication.Rdata")
cred$handshake()

registerTwitterOAuth(cred)

##day1
microsoftTweets1 <- searchTwitter("@Microsoft",n=500, lang="en", since='2014-12-05', until='2014-12-06')

length(microsoftTweets1)

microsoftTweets1.id <- sapply(microsoftTweets1, function(x) x$getId())
microsoftTweets1.text <- sapply(microsoftTweets1, function(x) x$getText())
microsoftTweets1.screenname <- sapply(microsoftTweets1, function(x) x$getScreenName())
microsoftTweets1.isretweet <- sapply(microsoftTweets1, function(x) x$getIsRetweet())
microsoftTweets1.retweeted <- sapply(microsoftTweets1, function(x) x$getRetweeted())
microsoftTweets1.created <- sapply(microsoftTweets1, function(x) x$getCreated())


head(microsoftTweets1.text)


day1 <- data.frame(microsoftTweets1.id, microsoftTweets1.text, microsoftTweets1.screenname, microsoftTweets1.isretweet, microsoftTweets1.retweeted, microsoftTweets1.created)
names(day1) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(day1, file = "microsoft1.txt", append = TRUE)

##day2

microsoftTweets2 <- searchTwitter("@Microsoft",n=500, lang="en", since='2014-12-1', until='2014-12-2')

length(microsoftTweets2)

microsoftTweets2.id <- sapply(microsoftTweets2, function(x) x$getId())
microsoftTweets2.text <- sapply(microsoftTweets2, function(x) x$getText())
microsoftTweets2.screenname <- sapply(microsoftTweets2, function(x) x$getScreenName())
microsoftTweets2.isretweet <- sapply(microsoftTweets2, function(x) x$getIsRetweet())
microsoftTweets2.retweeted <- sapply(microsoftTweets2, function(x) x$getRetweeted())
microsoftTweets2.created <- sapply(microsoftTweets2, function(x) x$getCreated())

head(microsoftTweets2.text)

day2 <- data.frame(microsoftTweets2.id, microsoftTweets2.text, microsoftTweets2.screenname, microsoftTweets2.isretweet, microsoftTweets2.retweeted, microsoftTweets2.created)
names(day2) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(day2, file = "microsoft2.txt", append = TRUE)

##day3

microsoftTweets3 <- searchTwitter("@Microsoft",n=500, lang="en", since='2014-12-2', until='2014-12-3')

length(microsoftTweets3)

microsoftTweets3.id <- sapply(microsoftTweets3, function(x) x$getId())
microsoftTweets3.text <- sapply(microsoftTweets3, function(x) x$getText())
microsoftTweets3.screenname <- sapply(microsoftTweets3, function(x) x$getScreenName())
microsoftTweets3.isretweet <- sapply(microsoftTweets3, function(x) x$getIsRetweet())
microsoftTweets3.retweeted <- sapply(microsoftTweets3, function(x) x$getRetweeted())
microsoftTweets3.created <- sapply(microsoftTweets3, function(x) x$getCreated())

head(microsoftTweets3.text)

day3 <- data.frame(microsoftTweets3.id, microsoftTweets3.text, microsoftTweets3.screenname, microsoftTweets3.isretweet, microsoftTweets3.retweeted, microsoftTweets3.created)
names(day3) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(day3, file = "microsoft3.txt", append = TRUE)

##day4

microsoftTweets4 <- searchTwitter("@Microsoft",n=500, lang="en", since='2014-12-3', until='2014-12-4')

length(microsoftTweets4)

microsoftTweets4.id <- sapply(microsoftTweets4, function(x) x$getId())
microsoftTweets4.text <- sapply(microsoftTweets4, function(x) x$getText())
microsoftTweets4.screenname <- sapply(microsoftTweets4, function(x) x$getScreenName())
microsoftTweets4.isretweet <- sapply(microsoftTweets4, function(x) x$getIsRetweet())
microsoftTweets4.retweeted <- sapply(microsoftTweets4, function(x) x$getRetweeted())
microsoftTweets4.created <- sapply(microsoftTweets4, function(x) x$getCreated())

head(microsoftTweets4.text)

day4 <- data.frame(microsoftTweets4.id, microsoftTweets4.text, microsoftTweets4.screenname, microsoftTweets4.isretweet, microsoftTweets4.retweeted, microsoftTweets4.created)
names(day4) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(day4, file = "microsoft4.txt", append = TRUE)

##day5

microsoftTweets5 <- searchTwitter("@Microsoft",n=500, lang="en", since='2014-12-4', until='2014-12-5')

length(microsoftTweets5)

microsoftTweets5.id <- sapply(microsoftTweets5, function(x) x$getId())
microsoftTweets5.text <- sapply(microsoftTweets5, function(x) x$getText())
microsoftTweets5.screenname <- sapply(microsoftTweets5, function(x) x$getScreenName())
microsoftTweets5.isretweet <- sapply(microsoftTweets5, function(x) x$getIsRetweet())
microsoftTweets5.retweeted <- sapply(microsoftTweets5, function(x) x$getRetweeted())
microsoftTweets5.created <- sapply(microsoftTweets5, function(x) x$getCreated())

head(microsoftTweets5.text)

day5 <- data.frame(microsoftTweets5.id, microsoftTweets5.text, microsoftTweets5.screenname, microsoftTweets5.isretweet, microsoftTweets5.retweeted, microsoftTweets5.created)
names(day5) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(day5, file = "microsoft5.txt", append = TRUE)

