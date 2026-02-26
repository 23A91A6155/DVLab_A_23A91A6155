data(VADeaths)

VADeaths
View(VADeaths)
?VADeaths
class(VADeaths)

va_df <- as.data.frame(VADeaths)
va_df$AgeGroups <- rownames(VADeaths)
va_df
va_long <- reshape(va_df,
                   direction = "long",
                   varying = colnames(VADeaths),
                   v.names = "DeathRate",
                   timevar = "Population",
                   times = colnames(VADeaths)
)
hist(va_long$DeathRate,
     main = "Histogram of VA Deathrates",
     xlab = "Deathrate Bins",
     ylab = "frequency")

hist(va_long$DeathRate,
     main = "Histogram of VA Deathrates",
     xlab = "Deathrate Bins",
     ylab = "frequency",
     col = 'lightblue',
     border = 'darkblue')

hist(va_long$DeathRate,
     breaks = 8,
     main = "Histogram of VA Deathrates",
     xlab = "Deathrate Bins",
     ylab = "frequency",
     col = 'lightblue',
     border = 'darkblue')

hist(va_long$DeathRate,
     breaks = seq(0,80,by=10),
     main = "Histogram of VA Deathrates",
     xlab = "Deathrate Bins",
     ylab = "frequency",
     col = 'lightblue',
     border = 'darkblue')



library("ggplot2")

ggplot(va_long,aes(x=DeathRate)) +
  geom_histogram()