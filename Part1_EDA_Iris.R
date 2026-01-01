data()
library(datasets)
data(package = "datasets")

data(iris)
head(iris)
str(iris)
summary(iris)
colSums(is.na(iris))

hist(iris$Sepal.Length,
     col = "lightblue",
     main = "Histogram of Sepal Length",
     xlab = "Sepal Length")

boxplot(iris$Petal.Length,
        col = "orange",
        main = "Boxplot of Petal Length")

plot(iris$Sepal.Length,
     iris$Petal.Length,
     col = "blue",
     pch = 19,
     main = "Sepal Length vs Petal Length",
     xlab = "Sepal Length",
     ylab = "Petal Length")

barplot(table(iris$Species),
        col = c("red", "green", "blue"),
        main = "Species Distribution")
