household_power_consumption  <- read.table("d://data/household_household_power_consumption _consumption.txt", sep = ";", h=T)
datetime <- paste(household_household_power_consumption _consumption $Date, household_household_power_consumption _consumption $Time)
datetime <- as.POSIXct(strptime(datetime, "%d/%m/%Y %H:%M:%S"))
household_household_power_consumption _consumption  <- cbind(datetime, household_power_consumption [,-(1:2)])
household_power_consumption  <- subset(household_power_consumption , datetime >= as.POSIXct("2007-02-01 00:00:00 PST") & datetime <= as.POSIXct("2007-02-02 23:59:59 PST"))
household_power_consumption $Sub_metering_1 = as.numeric(as.character(household_power_consumption $Sub_metering_1))
household_power_consumption $Sub_metering_2 = as.numeric(as.character(household_power_consumption $Sub_metering_2))
household_power_consumption $Sub_metering_3 = as.numeric(as.character(household_power_consumption $Sub_metering_3))


png("plot3.png", width = 480, height = 480)

plot(household_power_consumption $Sub_metering_1 ~ household_power_consumption $datetime, type = "l", main = "", ylab = "Energy sub metering", xlab = "")

lines(household_power_consumption $Sub_metering_2 ~ household_power_consumption $datetime, col = "Red")

lines(household_power_consumption $Sub_metering_3 ~ household_power_consumption $datetime, col = "Blue")

legend("topright", col = c("Black", "Red", "Blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
Close the connection
dev.off()
