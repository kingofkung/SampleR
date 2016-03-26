## Load all custom functions, sound Libraries


library(tuneR)
library(seewave)

## Custom paste function(I got tired of typing in all these options).
pw <- function(x1,y1) pastew(x1, y1, at = "start", output = "Wave")

## And custom cut function
cw <- function(sound, t1, t2) cutw(sound, from = t1, to = t2, xunit = "time", output = "Wave")

## Not sure if necessary, but oh well.
setWavPlayer('afplay')

