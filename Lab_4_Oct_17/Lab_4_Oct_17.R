data("cars")
cars1 <- cars[1:30,]
head(cars1)

cars_outliers <- data.frame(speed=c(25, 25, 29, 30, 30), dist=c(205, 208, 210, 217, 210))

head(cars_outliers)

cars2 <- rbind(cars1, cars_outliers)

par(mfrow = c(1, 2))
help(par)
plot(cars2$speed, cars2$dist, xlim=c(0, 35), ylim=c(0, 240), main="with outliers", xlab="speed", ylab="dist")
abline(lm(dist~speed, data = cars2))

plot(cars1$speed, cars1$dist, xlim=c(0, 35), ylim=c(0, 240), main="without outliers", xlab="speed", ylab="dist")
abline(lm(dist~speed, data = cars1))
