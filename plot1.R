plot1 <- function(data_file) {
    data_electric <- read.table(data_file, header = TRUE, sep = ";",
                                na.strings = "?")
    data_electric$Date <- as.Date(data_electric$Date, "%d/%m/%Y")
    new_data <- data_electric[data_electric$Date == ymd("2007-02-01")
                              | data_electric$Date == ymd("2007-02-02"), ]

    png(filename = "plot1.png", width = 480, height = 480)
    hist(new_data$Global_active_power, col = "red",
         xlab = "Global Active Power (kilowatts)",
         main = "Global Active Power")
    dev.off()
}