## God Save the Queen

source("PreReqs.R")



song <- readMP3("/Users/bjr/Music/iTunes/iTunes Music/Queen/Queen_ Greatest Hits I & II/16 We Will Rock You.mp3")

plot(song, xlim = c(1.8, 4), simplify = FALSE, xaxt = "n")
axis(1, at = seq(0, 5, .1))


listen(song, from = 1.9, to = 3.1)

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

fulbeats <- c(b2, sil, c1, sil, s1) ## How can I make a recursive thing that pastes these together?

## paste together first two
## then paste together that paste, next one
## then paste together that paste, next one
## until we run out of things to paste

myfirstbeat <- pwbulk(fulbeats)



listen(myfirstbeat)

##Loop it! 8 times
## for(i in 1:8) if(i == 1) beat <-  samplebeat else { beat <- pw(beat, samplebeat)}

loopr(myfirstbeat, 3)

plot(beat)

listen(beat)
