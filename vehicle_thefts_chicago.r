#Structure of data
nrow(mvt)
str(mvt)
summary(mvt)

#Maximum value of Variable ID
max(mvt$ID)

#Min Value of Variable Beat
min(mvt$Beat)
summary(mvt$Beat)

#No of times when the arrest was made
table(mvt$Arrest)
sum(mvt$Arrest==T)

#observations have a LocationDescription value of ALLEY
table(mvt$LocationDescription)
sum(mvt$LocationDescription=="ALLEY")

#Converting dates into objects
DateConvert <- as.Date(strptime(mvt$Date,"%m/%d/%y %H:%M"))
summary(DateConvert)

#extracting the month and the day of the week
mvt$Month= months(DateConvert)
mvt$Weekday=weekdays(DateConvert)
mvt$Date <- DateConvert

#Month which fewer Thefts occured and day maximum thefts occured
which.min(table(mvt$Month))
which.max(table(mvt$Weekday))

#month that has the largest number of motor vehicle thefts for which an arrest was made
month1 <- mvt$Month[mvt$Arrest==T]
table(month1)
table(mvt$Arrest,mvt$Month)

#Visualizing Crime Trends
hist(mvt$Date,breaks = 100)
boxplot(mvt$Date~mvt$Arrest)

# what proportion of motor vehicle thefts in 2001 was an arrest made
table(mvt$Arrest[mvt$Year==2001]
sum(mvt$Arrest==T & mvt$Year==2001)/sum(mvt$Year==2001)

#Proportion in 2007
sum(mvt$Arrest==T & mvt$Year==2007)/sum(mvt$Year==2007)

#Proportion in 2012
sum(mvt$Arrest==T & mvt$Year==2012)/sum(mvt$Year==2012)

# top five locations for motor vehicle thefts
sort(table(mvt$LocationDescription))

#subset of top five locations
top5 <- subset(mvt, mvt$LocationDescription=="STREET" |  LocationDescription=="PARKING LOT/GARAGE(NON.RESID.)" | LocationDescription=="ALLEY" | LocationDescription=="GAS STATION" | LocationDescription=="DRIVEWAY - RESIDENTIAL")
str(top5)
top5$LocationDescription <-factor(top5$LocationDescription)

#day of the week do the most motor vehicle thefts at gas stations
table(top5$LocationDescription,top5$Weekday)
  
