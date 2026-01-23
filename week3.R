data(iris)
?iris
head(iris,3)
str(iris)
class(iris)
#very basic bar chart
#count of each species
#to see the data in the coloumn "species"
iris$Species
View(iris)
#ploiris#plotting a bar chart
barplot(
  table(iris$Species)
)