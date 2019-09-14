
# Plot 2
# convert data and time to specific format
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')
#paste date&time together to creat a variable named DateTime and change it int posixct
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))
# open device
if(!file.exists('figures')) dir.create('figures')
png(filename = './figures/plot2.png', width = 480, height = 480, units='px')
# plot figure
dev.new()
# set system in English version
Sys.setlocale(category = "LC_ALL", locale = "english")
plot(data$DateTime, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
# close device
dev.off()