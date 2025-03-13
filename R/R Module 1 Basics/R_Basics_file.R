
#Name:

# 8. (a)
#set your working directory ,fill in your code after this line


#read in the file College.csv using read.csv()


#8. (b)
#Give data frame college rownames
rownames(college) <- college[,1] 
View(college)
# 8. (c)
# Use a negative number to generate a subset with all but one column
# college[, -c(1, 2, 3)]  will generate a subset with all but the first three columns
college <- college[,-1]
View(college)

# i.


# ii.


# iii.


# iv.
# replicate "No" for the same times as the number of colleges using rep()
Elite <- rep("No",nrow(college))
# change the values in Elite for colleges with proportion of students 
# coming from the top 10% of their high school classes 
# exceeds 50 % to "Yes"
Elite[college$Top10perc >50] <- "Yes"
# as.factor change ELite, a character vector to a factor vector
# (we will touch on factors later in class) 
Elite <- as.factor(Elite)
# add the newly created vector to the college data frame
college <- data.frame(college ,Elite)




# v.



# 9.
#load the Auto.csv into a variable called auto using read.csv()

# remove all rows with missing values using na.omit()
auto <- na.omit(auto)

#apply the class() function to each column of auto data frame
sapply(auto, class)

# (a)


# (b)


# (c)


# (d)



# (e)



# 10.
# (a)
library(MASS)
Boston
?Boston

# (b)


# (c)


# (d)


# (e)


# (f)


# (g)
which.min(Boston$medv)
which.max(Boston$medv)

# (h)

