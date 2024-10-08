# Script to generate some random data
# by Jakob Assmann j.assmann@bios.au.dk 19 Feb 2020

### Generate a random dataset to fit a linear model ----

# I make a change and Weixiao sees this

# Set seed to obtain reproducible pseudo-random numbers.
set.seed(5) 

print('please send me your new ideas for the code, lets make the code perfect')

# Generate base data based on a linear equation
x <- 1:100
a <- runif(1,0,10)
b <- runif(1,0,100)
y <- a*x + b 

# Add some noise
sigma <- 10 * a
y <- y + rnorm(length(y), 0, sigma)

# Generate dataframe
my_data <- data.frame(x = x, y = y)

# Plot 
plot(x,y, col = x)

# Save data
write.csv(my_data,file = "data/my_data.csv", row.names = F)

print('well done')

### End of file