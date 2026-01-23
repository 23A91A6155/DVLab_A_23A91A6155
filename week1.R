#Load Air Passeners Dataset
data(AirPassengers)

#Verify the dataset
?AirPassengers
class(AirPassengers)
View(AirPassengers)

#Convert dataset to dataframe
ap_df <- data.frame(
  year <- time(AirPassengers),
  passengers = as.numeric(AirPassengers)
)
ap_df

#Data frame with years and months Seperately
ap_df_months<-data.frame(
  year=floor(time(AirPassengers)),
  month=cycle(time(AirPassengers)),
  passengers=as.numeric(AirPassengers)
)
ap_df_months

#basic plot
plot(AirPassengers)

#plot with title,axis labels and color
plot(AirPassengers,
     type='l',
     main="Air Passengers Trend Analysis",
     xlab="Months",
     ylab="no.of Passengers",
     col="red"
)
#changing the line width and point color
plot(AirPassengers,
     type='l',
     lwd=1.5,
     main="Air Passengers Trend Analysis",
     xlab="Months",
     ylab="no.of Passengers",
     col="red"
)
points(AirPassengers,
       type='o',
       pch=10,
       col="green"
)
grid()