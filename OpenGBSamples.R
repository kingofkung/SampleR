## Openand store garage band samples,
loc <- "/Library/Audio/Apple Loops/Apple"
setwd(loc)
list.files()[1]
setwd(paste(loc, list.files()[1], sep = "/"))
