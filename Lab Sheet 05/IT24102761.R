## Setting the directory
setwd("C:\\Users\\Asus\\OneDrive - Sri Lanka Institute of Information Technology\\Documents\\SLIIT LAB\\Y2S1\\PS\\Lab 05")

## Importing the table
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")

## View structure
str(Delivery_Times)

## View the file in a separate window
fix(Delivery_Times)
attach(Delivery_Times)

## Create breaks from 20 to 70 in 9 intervals (10 breakpoints)
breaks <- seq(20, 70, length.out = 10)

## Draw histogram
histogram <- hist(Delivery_Times$Delivery_Time,
                  main = "Histogram for Delivery Time",
                  breaks = breaks,
                  right = FALSE)

## Extract frequency and midpoints
freq <- histogram$counts
mids <- histogram$mids

## Create class labels
classes <- c()
for (i in 1:(length(breaks) - 1)) {
  classes[i] <- paste0("[", breaks[i], ",", breaks[i + 1], ")")
}

## Display classes and corresponding frequencies
##organize related data side by side
cbind(Classes = classes, Frequency = freq)


## Draw frequency polygon on the same plot
lines(mids, freq)


## Draw frequency polygon in a new plot
plot(mids, freq,type = 'o',main = "Frequency Polygon for Shareholders",
     xlab = "Shareholders",ylab = "Frequency",ylim = c(0, max(freq)))

#using "cumsum" commands we can get cumulative freq
#It takes a vector and returns a new vector where each element is 
#the sum of all previous elements up to that point.
cum.freq<- cumsum(freq)

#creating a null variable
new<-c()
attach(Delivery_Times)
#store cumulative frequencies in order to get the ogive
for(i in 1:length(breaks)){
  if(i == 1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
}
attach(Delivery_Times)

#draw cumulative frequency polygon in a new plot
plot(breaks,new,type = 'l',amin = "Cumalative Frequency polygon for sharegolders",
     xlab = "Shearholder",ylab="Cumulative Frequency", ylim  = c(0,max(cum.freq)))

#upper limits of each class along with its cumulative freq in a table 
cbind(Upper = breaks, CumTreq = new)
