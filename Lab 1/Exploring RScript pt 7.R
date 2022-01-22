favorite_number <- 10
favorite_number
#> [1] 10

sleeptimes <- c(1,2,8,5,4,8,9,3,4,5,6,7,8,9)

mean(sleeptimes)

help("mean")

mean(sleeptimes, .1)
sd(times)
range(times)
length(times)

How many people had sleeptimes less than 6 hours
times < 6
times == 5
times <= 7
times != 2

(times < 4) | (times > 9)
any(times < 6)
all(times < 6)
which(times < 6)

times[4]
