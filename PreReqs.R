## Load all custom functions, sound Libraries


library(tuneR)
library(seewave)

## Custom paste function(I got tired of typing in all these options).
pw <- function(x1,y1) pastew(x1, y1, at = "start", output = "Wave")


##Combine a list of beats together
pwbulk <- function(beatlist) {
    for(i in 1:(length(beatlist) - 1)) {
        if (i ==1 ) samplebeat <- pw(beatlist[[1]], beatlist[[2]])
        if(i != 1) samplebeat <- pw(samplebeat, beatlist[[i + 1]])

    }
    samplebeat
}

## And custom cut function
cw <- function(sound, t1, t2) cutw(sound, from = t1, to = t2, xunit = "time", output = "Wave")

## Find some points on the line (npts, to be specific), and show their coordinate
locatr <- function(npts = 2){
    locs <- locator(n = npts)

    abline(v = locs$x)
    locs$x
}

## Create a loop and playback function
loopr <- function(thebeat, ntimes = 1, hear = TRUE, giveback = TRUE){
    for(i in 1:ntimes) {if(i == 1) beat <-  thebeat
                   else { beat <- pw(beat, thebeat)}}

    if(hear == TRUE) listen(beat)
    if(giveback) beat

}

## Not sure if necessary, but oh well.
setWavPlayer('afplay')

