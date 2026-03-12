#Load dataset
data(HairEyeColor)
#Check structure
str(HairEyeColor)
View(HairEyeColor)
?HairEyeColor
#Very Basic Mosaic plot(Base R)
mosaicplot(HairEyeColor)
#Add Title and Colors
mosaicplot(HairEyeColor,main="Masaic Plot: Hair,Eye Color and Sex",
           color=TRUE)
#Masaic Plots by sex
par(mfrom=c(1,2))
mosaicplot(HairEyeColor[,,"Male"],main="Male",color=TRUE)
mosaicplot(HairEyeColor[,,"Female"],main="Female",color=TRUE)
par(mfrom=c(1,1))
#custom colors
mosaicplot(HairEye2D,col=c("brown","black","red","yellow"),
           main="Hair vs Eye Color(Custom")
install.packages("vcd")
library(vcd)
mosaic(HairEyeColor,shade=TRUE,legend=TRUE,
       main="Shaded Mosaic Plot(vcd)")
#convert dataset to data frame(for ggplot)
hair_eye_df<-as.data.frame(HairEyeColor)
head(hair_eye_df)
#ggplot alternative (proportional mosaic-style plot)
library(ggplot2)
ggplot(hair_eye_df,aes(x=Hair,y=Freq,fill=Eye))+
  geom_bar(stat="identity",position="fill")+
  facet_wrap(~Sex)+
  labs(
    title="Proportional Distribution of Eye Color by Hair",
    y="Proportion"
  )+
  theme_minimal()
#Advanced mosaic with residual shading 
masaic(~Hair+Eye+Sex,data=hair_eye_df,shade=TRUE,legend=TRUE)

