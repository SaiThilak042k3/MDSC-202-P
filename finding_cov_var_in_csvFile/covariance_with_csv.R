# Load the data
data <- read.csv("marketing.csv", header = FALSE)
print(data)

# Extract the first 73 rows and 15 columns
subset_data <- data[2:73, 2:15]
print(subset_data)

# Remove commas and convert the columns to numeric
subset_data <- apply(subset_data, 2, function(x) as.numeric(gsub(",", "", x)))
print(subset_data)

# Remove rows with missing values
subset_data <- na.omit(subset_data)
print(subset_data)

# Number of observations for finding Variance-Covariance matrix
n <- nrow(subset_data)
print(n)

# Mean of each variable
means <- colMeans(subset_data)
print(means)

# Variance-Covariance matrix initialization
cov_matrix <- matrix(0, ncol = ncol(subset_data), nrow = ncol(subset_data))
print(cov_matrix)

# Compute variance and covariance
for (i in 1:ncol(subset_data)) {
  for (j in 1:ncol(subset_data)) {
    if (i == j) {
      # Variance  
      cov_matrix[i, j] <- sum((subset_data[, i] - means[i])^2) / (n - 1)
    } else {
      # Covariance
      cov_matrix[i, j] <- sum((subset_data[, i] - means[i]) * (subset_data[, j] - means[j])) / (n - 1)
    }
  }
}

# Variance-Covariance Matrix
print(cov_matrix)

names = data[1:1,2:15]
names

# Save cov_matrix to a CSV file
write.csv(cov_matrix, file = "covariance_matrix.csv")

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
