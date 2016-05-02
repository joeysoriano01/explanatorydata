## This first line will likely take a few seconds. Be patient!
if(!exists("NEI")){
  NEI <- readRDS("C:/Users/sony vaio/Documents/Coursera/Exploratory Data Analysis Assignment 2/summarySCC_PM25.rds")
}
if(!exists("SCC")){
  SCC <- readRDS("C:/Users/sony vaio/Documents/Coursera/Exploratory Data Analysis Assignment 2/Source_Classification_Code.rds")
}
# Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
# Using the base plotting system, make a plot showing the total PM2.5 emission from all sources 
# for each of the years 1999, 2002, 2005, and 2008.

aggregatedTotalByYear <- aggregate(Emissions ~ year, NEI, sum)

png('plot1.png')
barplot(height=aggregatedTotalByYear$Emissions, names.arg=aggregatedTotalByYear$year, xlab="Year", ylab=expression('Total PM'[2.5]*' Emission'),main=expression('Total PM'[2.5]*' Emissions at Various Years'))
dev.off()