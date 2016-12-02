## Get and Clean the Data
library(dplyr)
library(tidyr)
library(readr)
library(lubridate)

if (!file.exists("data")) {
    dir.create("data")
}

## Import the data and load into the Dataframe 'hhpc'
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl,destfile="./Data/Dataset.zip")

unzip(zipfile="./Data/Dataset.zip", exdir = "./Data")

## Use readr package
hhpc <- read_delim("~/R/Coursera/ExploratoryDataAnalysis/CourseProjectOne/data/household_power_consumption.txt", 
                   ";", escape_double = FALSE, col_types = cols(Time = col_character()), 
                   na = "?", trim_ws = TRUE)

## Use the lubridate package: dmy
hhpc$Date <- dmy(hhpc$Date)
## hhpc$Date <- hms(hhpc$Time)

## Use the dplyr package
hhpc <- hhpc %>%
  filter(Date >= as.Date("2007-02-01") & 
         Date <= as.Date("2007-02-02"))

hhpc <- unite(hhpc, "DateTime", c(Date, Time), sep = " ")
hhpc$DateTime <- ymd_hms(hhpc$DateTime)
