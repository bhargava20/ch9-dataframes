### -------------------- Exercise 1: Creating data frames --------------------

## Create a vector of the number of points the Seahawks scored in the first 5 games
                           # Hint: google "Seahawks scores", or check the football database:
                           # http://www.footballdb.com/teams/nfl/seattle-seahawks/results
                           # here 'Result' displays scores, 'L' stands for loss, 'W' for win
points.scored <- c(34, 59, 11, 20, 33)

# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 5 games
points.allowed <- c(21, 22, 10, 30, 51)

# Combine your two vectors into a dataframe
data <- data.frame(points.scored, points.allowed)

# Create a new column "diff" that is the difference in points
data$diff <- data$points.scored - data$points.allowed

# Create a new column "won" which is TRUE if the Seahawks won
data$won <- data$diff > 0

# Create a vector of the opponents
opponents <- c("ab", "bb", "cb", "db", "eb")

# Add the vector of opponents into the data frame
# rownames(data) <- opponents
data <- data.frame(data, opponents)
