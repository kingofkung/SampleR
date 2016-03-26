## God Save the Queen

library(tuneR)
library(seewave)

## Custom paste function(I got tired of typing in all these options).
pw <- function(x1,y1) pastew(x1, y1, at = "start", output = "Wave")

## Not sure if necessary, but oh well.
setWavPlayer('afplay')


song <- readMP3("/Users/bjr/Music/iTunes/iTunes Music/Queen/Queen_ Greatest Hits I & II/16 We Will Rock You.mp3")

play(song)

plot(song)
