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
coords <- locator(type = "l")

## b1 <- cutw(s1, from = 0, to = .4, xunit = "time", output = "Wave")
b1 <- cw(s1, 0, .38)
## b2 <- c2(s1, .4, .
listen(b1)
