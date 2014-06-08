
household_power_consumption <- read.csv("D:/Data/household_power_consumption.txt", sep=";")

household_power_consumption$Date<-as.Date(household_power_consumption$Date,format="%d/%m/%Y")
hpc<-household_power_consumption[household_power_consumption $Date >= as.Date("2007-02-01") & household_power_consumption$Date<=as.Date("2007-02-02"),]


png(filename="plot1.png", width=480, height=480, units="px")
hpc$Global_active_power<-as.vector(hpc$Global_active_power)
hpc$Global_active_power<-as.numeric(hpc$Global_active_power)

hist(hpc$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
