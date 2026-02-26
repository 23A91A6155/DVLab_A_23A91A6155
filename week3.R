data(iris)
?iris
#by default head shows 6 row , i want 10 rows
head(iris ,10)
str(iris)
class(iris)

iris$Species
View(iris)
barplot(
  table(iris$Species),
  main="court of Iris Species",
  xlab ="Species",
  ylab="Number of  Items",
  col='steelblue'
)
#add title ,axis label , color
#bar chart from aggregation data
#using mean sepal length per species
mean_sepal <- tapply(iris$Sepal.Length , iris$Species ,mean)
mean_sepal

barplot(
  mean_sepal,
  col='orange',
  main="Average Sepal Length by Species",
  xlab="Species",
  ylab="Mean sepal Length"
)


#grouped bar chart
#common Sepal&petal length

group_mean <- rbind(
  Sepal = tapply(iris$Sepal.Length , iris$Species ,mean),
  petal =tapply(iris$Petal.Length , iris$Species ,mean)
)
group_mean
#grouped cluster bar chart
barplot(
  group_mean,
  beside =TRUE,
  col= c("skyblue", "pink"),
  legend.text =TRUE,
  main="Clustered Bar chart :Sepal vs Petal"
)
#grouped stacked bar chart
barplot(
  group_mean,
  beside =FALSE,
  col= c("skyblue", "pink"),
  legend.text =TRUE,
  main="Stacked Bar chart :Sepal vs Petal"
)