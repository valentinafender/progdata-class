n <- 20
# what do these lines do?
a <- 3
b <- -1
sig_sq <- 0.5

# what about these?
x <- runif(n)
y <- a + b * x + rnorm(n, sd = sqrt(sig_sq))
(avg_x <- mean(x))
#> [1] 0.478

# these lines save some output...
write(avg_x, "avg_x.txt")
plot(x, y)
abline(a, b, col = "yellow")

# what do these lines do?
a <- 2
b <- -3
sig_sq <- 0.5

# what about these?
x <- runif(40)
y <- a + b * x + rnorm(40, sd = sqrt(sig_sq))
(avg_x <- mean(x))
#> [1] 0.478

# these lines save some output...
write(avg_x, "avg_x.txt")
plot(x, y)
abline(a, b, col = "purple")
