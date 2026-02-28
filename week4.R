data(iris)
str(iris)
View(iris)
class(iris)
?iris
boxplot(iris$Sepal.Length)

boxplot(iris$Sepal.Length,
        main = "Box plot for Sepal Length",
        ylab = "Sepal_Length",
        col = 'skyblue')

boxplot(Sepal.Length ~ Species,
        data = iris,
        main = "Box plot for Sepal Length",
        ylab = "Sepal_Length",
        xlab = "Species",
        col = c('skyblue', 'green' , 'pink'))

boxplot(iris[,1:4],
        main = "Multi Variable Box Plot",
        col = c("red", 'skyblue', 'green' , 'pink'))