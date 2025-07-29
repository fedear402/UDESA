#------------------------------------------------------------------------------#
# Universidad de San Andrés
# MaestrÍa en EconomÍa
# Macroeconometría
# 2025, 2do trimestre 
# Profesor: Javier García-Cicco
# Tutor: Franco Nuñez

#------------------------------------------------------------------------------#

rm(list = ls())

# R: some examples

# 1. Variables and Data Types
# R uses <- for assignment
# "=" can also be used
x <- 5            # Numeric variable
y <- "Hello"      # Character variable
z <- TRUE         # Logical variable (TRUE/FALSE)

# 2. Basic Operations
a <- x + 3        # Addition
b <- x * 2        # Multiplication
c <- paste(y, "World")  # String concatenation
d <- !z           # Logical NOT

# 3. Vectors
# Create numeric vectors
numeric_vector <- c(1, 2, 3, 4, 5)
# Create character vectors
char_vector <- c("apple", "banana", "cherry")

# 4. Indexing and Slicing
first_element <- numeric_vector[1]
subset_vector <- numeric_vector[2:4]

# 5. Data Frames
# Create a data frame
df <- data.frame(Name=c("Alice", "Bob", "Charlie"),
                 Age=c(25, 30, 22))

# Access data frame columns
ages <- df$Age
names <- df$Name

# 6. Functions and Libraries
# Load a library
library(ggplot2)

# Use a function from a library
data <- c(1, 2, 3, 4, 5)
hist(data)

# 7. Control Structures
# if-else statement
if (x > 3) {
  message("x is greater than 3")
} else {
  message("x is not greater than 3")
}

# for loop
for (i in 1:5) {
  print(i)
}

# 8. Data Analysis
# Load a dataset
data(mtcars)

# Summary statistics
summary(mtcars$mpg)

# 9. Data Visualization
# Create a scatter plot
plot(mtcars$mpg, mtcars$hp, main="Scatter Plot", xlab="Miles per Gallon", ylab="Horsepower")

# 10. Exporting Results
# Save a plot as an image
png("scatter_plot.png")
plot(mtcars$mpg, mtcars$hp, main="Scatter Plot", xlab="Miles per Gallon", ylab="Horsepower")
dev.off()

# 11. Working with Files
# Set directory

# *****
# Maybe you need to install these packages
# install.packages("Rcpp")
# install.packages("RInside")
# install.packages("rstudioapi")
# ***** 
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
getwd()
# Read CSV data
data <- read.csv("data.csv")

# Write to CSV
write.csv(data, "output.csv")

# 12. Statistical Analysis
# Perform a t-test
t_test_result <- t.test(data$var1, data$var2)


# 13. Functions
# You can create custom functions for different tasks.
# Functions take input arguments, perform operations, and return results.

# Define a simple function
add_two_numbers <- function(x, y) {
  result <- x + y
  return(result)
}

# Use the function
result <- add_two_numbers(5, 3)
print(result)  # Output: 8

