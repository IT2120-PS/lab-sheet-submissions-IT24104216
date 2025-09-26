setwd("C:\\Users\\IT24104216\\Desktop\\IT24104216_Lab_08")

## Importing the dataset from folder 
data <- read.table("LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)


## Question 01

## Getting population mean and standard deviation
pop_mean <- mean(Weight.kg.)
pop_sd <- sd(Weight.kg.)



## Question 02

## Create null vectors
samples <- c()
n <- c()

## Generate 25 random samples of size 6 with replacement
for(i in 1:25) {
  s <- sample(Weight.kg., 6, replace=TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('s', i))
}

##Giving column names to samples
colnames(samples) <- n

## Getting sample mean and standard deviation
s.means <- apply(samples, 2, mean)
s.sds <- apply(samples, 2, sd)


## Question 03

## Getting mean and standard deviation of sample mean
mean_sample_means <- mean(s.means)
sd_sample_means <- sd(s.means)

## Display comparisons
pop_mean
mean_sample_means

pop_sd
sd_sample_means

