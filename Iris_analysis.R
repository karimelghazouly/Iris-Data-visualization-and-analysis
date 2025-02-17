library(psych)
describe(iris)
describeBy(iris,iris$Species)
seto=subset(iris,iris$Species=="setosa")
versi=subset(iris,iris$Species=="versi")
virg=subset(iris,iris$Species=="virginica")
plot(iris$Sepal.Length,iris$Sepal.Width,col=c("red","blue","green"),xlab = "Sepal Length",ylab = "Sepal Width")
 legend("topright",c("Red for setosa"," Blue for Versicolor","Green for Virginica"),text.col=c("red","blue","green"),inset = c(0,-0.65))
 plot(iris$Petal.Length,iris$Petal.Width,col=c("red","blue","green"),xlab = "Petal Length",ylab = "Petal Width")
 legend("topright",c("Red for setosa"," Blue for Versicolor","Green for Virginica"),text.col=c("red","blue","green"),inset = c(0,-0.65))
boxplot(iris[,1:4],col = c("red","blue","green","purple"))
x=cor(iris[,1:4],method = "pearson")
plot(iris$Petal.Width,iris$Petal.Length,col = "blue",main = "Petal Length & Width Regression",abline(lm(iris$Petal.Length~iris$Petal.Width)),cex = 1.3,pch = 16,xlab = "Width",ylab = "Length")
plot(iris$Sepal.Width,iris$Sepal.Length,col = "red",main = "Sepal Length & Width Regression",abline(lm(iris$Sepal.Length~iris$Sepal.Width)),cex = 1.3,pch = 16,xlab = "Width",ylab = "Length")
hist(iris$Petal.Length,col="green")
hist(iris$Petal.Width,col="red")
hist(iris$Sepal.Length,col="blue")
hist(iris$Sepal.Width,col="gold")
 plot(density(iris$Sepal.Length),main="Density plot for sepal length")
 polygon(density(iris$Sepal.Length),col="green")
 
 plot(density(iris$Sepal.Width),main="Density plot for sepal width")
 polygon(density(iris$Sepal.Width),col="red")
 
 plot(density(iris$Petal.Length),main="Density plot for petal width")
 polygon(density(iris$Petal.Length),col="blue")
 
 plot(density(iris$Petal.Width),main="Density plot for petal width")
 polygon(density(iris$Petal.Width),col="gold")
 barplot(table(iris$Sepal.Length),col="green")
 barplot(table(iris$Sepal.Width),col="red")
 barplot(table(iris$Petal.Length),col="blue")
 barplot(table(iris$Petal.Width),col="gold")
 barplot(table(iris$Species=="versicolor",iris$Sepal.Length),col=c("green","yellow"))
 barplot(table(iris$Species=="setosa",iris$Sepal.Width),col=c("red","blue"))
barplot(table(iris$Species=="virginica",iris$Petal.Length),col=c("purple","pink"),beside = T)
barplot(table(iris$Species=="virginica",iris$Petal.Width),col=c("orange","grey"),beside=T)
t.test(iris$Petal.Length,paired = F,alternative = "less",var.equal = T,conf.level = .95)