fulltable <- read.table("household_power_consumption.txt", sep=";",
                        skip=66637, nrows=2880, na.string="?")

gap <- fulltable[, 3]
gapc <- complete.cases(fulltable[, 3])
gap <- gap[gapc]

hist(gap, breaks=12, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")

dev.copy(png, file="plot1.png", width = 480, height = 480)
dev.off()
dev.off()

