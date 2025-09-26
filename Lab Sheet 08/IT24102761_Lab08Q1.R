#Example
getwd()

setwd("C:\\Users\\Asus\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\IT24102761")

#importing dataset
data <- read.table("Data - Lab 8.txt",header=TRUE)
fix(data)
attach(data) #call a column name without using $

#Q1
popmn <- mean(Nicotine) #mean
print(popmn)
popmn
popvar <- var(Nicotine) #variance
popvar

#Q2
samples <- c()
samples
n<- c()
n

for(i in 1:30){
  s<- sample(Nicotine,5,replace=TRUE)
  samples<- cbind(samples,s)
  n<-c(n,paste('s',i))
}  

colnames(samples)=n
s.means<- apply(samples,2,mean)
s.vars<- apply(samples,2,var)

#Q3
samplemean<- mean(s.means)
samplevars<-var(s.means)

#Q4
popmn
samplemean

#Q5
truevar = popvar/5
samplevars


