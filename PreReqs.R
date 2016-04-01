## Load all custom functions, sound Libraries


library(tuneR)
library(seewave)

## Custom paste function(I got tired of typing in all these options).
pw <- function(x1,y1) pastew(x1, y1, at = "start", output = "Wave")



cw <- function(sound, t1, t2) extractWave(sound, from = t1, to = t2, interact = FALSE, xunit = "time")

## Find some points on the line (npts, to be specific), and show their coordinate
locatr <- function(npts = 2){
    locs <- locator(n = npts)

    abline(v = locs$x)
    locs$x
}

## Create a loop and playback function
loopr <- function(thebeat, ntimes = 1, hear = TRUE, giveback = TRUE){
    for(i in 1:ntimes) {if(i == 1) beat <-  thebeat
                   else { beat <- do.call(bind, c(beat, thebeat))}}

    if(hear == TRUE) listen(beat)
    if(giveback) beat

}

## Not sure if necessary, but oh well.
setWavPlayer('afplay')

