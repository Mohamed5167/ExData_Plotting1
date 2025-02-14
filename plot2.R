plot2 <- function(data_file) {
    data_electric <- read.table(data_file, header = TRUE, sep = ";",
                                na.strings = "?")
    data_electric$Date <- as.Date(data_electric$Date, "%d/%m/%Y")
    new_data <- data_electric[data_electric$Date == ymd("2007-02-01")
                              | data_electric$Date == ymd("2007-02-02"), ]
    
    df_date_time <- as.POSIXct(paste(new_data$Date, new_data$Time))


    png(filename = "plot2.png", width = 480, height = 480)
    plot(df_date_time, new_data$Global_active_power, type = "l",
         xlab = "", ylab = "Global Active Power (kilowatts)")
    dev.off()
}