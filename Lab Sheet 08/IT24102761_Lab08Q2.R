## Setting the directory
setwd("C:\\Users\\Asus\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\IT24102761")

## Importing the dataset
data <- read.table("LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

## Question 1: Population mean and population standard deviation
popmn <- mean(Weight.kg.)
print(popmn)

popvar <- var(Weight.kg.)
print(popvar)


## Question 2: Take 25 random samples (size = 6)
samples <- c()
n <- c()

for(i in 1:25){
  s <- sample(Weight.kg., 6, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('s', i))
}

## Assign column names for each sample created
colnames(samples) <- n

## Sample means and variances
s.means <- apply(samples, 2, mean)
print(s.means)

s.vars <- apply(samples, 2, var)
print(s.vars)

## Question 3: Mean and variance of sample means
mean<- mean(s.means)
print(mean)

var<- var(s.means)
print(var_of_sample_means)

