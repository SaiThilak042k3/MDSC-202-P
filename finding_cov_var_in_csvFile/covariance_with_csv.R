# Load the data
data <- read.csv("marketing.csv", header = FALSE)
print(data)

# CLEANING THE DATA

# Extract the first 73 rows and 15 columns
subset_data <- data[2:73, 2:15]
print(subset_data)

# Remove commas and convert the columns to numeric
subset_data <- apply(subset_data, 2, function(x) as.numeric(gsub(",", "", x)))
print(subset_data)

# Remove rows with missing values
subset_data <- na.omit(subset_data)
print(subset_data)

# COVARIANCE

# Number of observations for finding Variance-Covariance matrix
n <- nrow(subset_data)
print(n)

# Mean of each variable
means <- colMeans(subset_data)
print(means)

# One matrix
one_matrix <- matrix(1, ncol = 1, nrow = nrow(subset_data))
print(one_matrix)

# X- Xbar
one <- subset_data - one_matrix %*% means
one
#x-xbar * t(x-xbar)
final <- t(one) %*% one

final <- 1/(n-1) * final

# Covarinace matrix
final 


#COREALTION MATRIX
sd <- sqrt(diag(final))
cor <- final / (sd %*% t(sd))
print(cor)


# Save corealtion matrix to a CSV file
write.csv(cor, file = "corealtion_matirx.csv")



'
So, here I deleted the column names and index because That is not realted to our
matrix.

1, Removing the commas in the subset_matrix.

2, Removing the missing values in the matrix.

3, find the Variance and Covariance.

4, find the matrix storing the csv file.

'

'

By the matrix of cov-var matirx we can infer that,
HIGH and %CHANGis postive corelated
52W H and 52W L is Negative corelated

'

