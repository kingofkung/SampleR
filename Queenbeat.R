## God Save the Queen

source("PreReqs.R")



song <- readMP3("/Users/bjr/Music/iTunes/iTunes Music/Queen/Queen_ Greatest Hits I & II/16 We Will Rock You.mp3")

plot(song, xlim = c(1.8, 4), simplify = FALSE, xaxt = "n")
axis(1, at = seq(0, 5, .1))

par(mfrow =c(2,1))


listen(song, from = 1.9, to = 3.1)
play(song)
## Get first sample.
## Beat beat clap silence
## s1 <- cutw(song, from = 1.9, to = 3.1 + .3, output = "Wave")
s1 <- cw(song, 1.9, 3.1 + .3)
listen(s1)

str(s1)
as.data.frame(which(s1@left == min(abs(s1@left))))

plot(s1, xaxt = "n")
axis(1, at = seq(0, 1.5, .05))
## locatr()
## b1 <- cutw(s1, from = 0, to = .4, xunit = "time", output = "Wave")
b1 <- cw(s1, 0, .3825)
b2 <- cw(s1, .39, .805)
c1 <- cw(s1, .8, 1.2)
sil <- cw(s1, 1.2, 1.5)

plot(s1)

## locatr()

## listen(s1, choose = TRUE)
listen(b2)
listen(c1)
listen(b1)

plot(b2)

fadew(b2, dout = .01, output = "Wave")

fulbeats <- c(b2, sil, c1, sil, s1) ## How can I make a recursive thing that pastes these together?

## Better way than recursion
myfirstbeat <- do.call(bind, fulbeats)


play(myfirstbeat)

##Loop it! 8 times
## for(i in 1:8) if(i == 1) beat <-  samplebeat else { beat <- pw(beat, samplebeat)}

loopr(myfirstbeat, 2)


do.call(bind, c(myfirstbeat,myfirstbeat))

plot(myfirstbeat)

## listen(beat)

## equalization (eq)
## Allows you to change sound (dry vs. Bright)
## Like tone dial on an electric Guitar
## Raise high's drop lows
## 3d plots of same
## pick their brain on how

## Possible to half the beat's time?
str(myfirstbeat)
mysecondbeat <- myfirstbeat
mysecondbeat@samp.rate <- mysecondbeat@samp.rate * 2
play(mysecondbeat)

## Well, that does it. But it doesn't quite sound like I wanted...
mythirdbeat <- myfirstbeat
mythirdbeat@samp.rate <- myfirstbeat@samp.rate * 1.35
play(mythirdbeat)
duration(mythirdbeat)

myfourthbeat <- ct(myfirstbeat, 2.2)
play(myfourthbeat)
plot(myfourthbeat)

## So how can I play with the frequencies to give me a deeper/tinnier sound?
myfifthbeat <- myfourthbeat
summary(myfifthbeat)

