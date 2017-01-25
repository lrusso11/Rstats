###Setting the working directory
setwd("~/R/Rstats/02 - Data Storage in R")
getwd()

###Importing Data
data <- read.csv("HWA_Data.csv")
head(data)
#rm(data)
Day<- data$Day

###Learning about vectors
Point <- seq(1,12)
point <- 1:12

#Character vectors
site <- c("A" ,"B" ,"C" ,"A" ,"B" ,"C" ,"A" ,"B" ,"C", "A", "B", "C")
site <- rep(c("A","B","C"),4)
Location <- rep(c("Edge","Interior"), each=3, length=12)
Duration <- rep(c("5","10"), each=6, length=12)

#Numeric vectors
species_count <- c(12, 10, 13, 11, 13, 12, 19, 10, 12, 11, 21, 12)
length(species_count)

#Logical vectors
logic <- species_count > 20
species_count[which(species_count > 20)]

###Factors
SiteFactor <- factor(site, levels= c("A", "B", "C"))
LocationFactor <- factor(Location, levels= c("Edge", "Interior"))
DurationFactor <- factor(Duration, levels= c("5","10"))

###Creating a table
bird.table2 <- cbind(Point, site, Location, Duration, species_count)
as.data.frame(bird.table2)

write.csv(bird.table2, "bird.table2.csv")

###Exporting a data frame
Birds <- data.frame(Point, site, Location, Duration, species_count)
write.csv(Birds, "Birds.csv")

bird.table3 <- cbind(Point, site, Location, Duration, species_count)
as.data.frame(bird.table3)
write.csv(bird.table3, "bird.table3.csv")
