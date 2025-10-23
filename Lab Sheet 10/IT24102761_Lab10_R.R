setwd("C:\\Users\\Asus\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\IT24102761")

#Exercise

#1

#i

#Null Hypothesis : The owner's claim is true; customers choose the four snack types with equal probability.
#Alternative Hypothesis : The owner's claim is false; at least one snack type has a probability of being chosen that is different from $0.25$.


#ii

observed_counts <- c(120, 95, 85, 100)

probabilities <- c(0.25, 0.25, 0.25, 0.25)

chisq.test(x = observed_counts, p = probabilities)


#iii

#Conclusion: Since the p-value (0.08969) is greater than 0.05, 
#we do not reject the null hypothesis at the 5% level of significance. 
#Therefore, there is not sufficient statistical evidence to reject the owner's claim.
