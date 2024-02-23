
set.seed(42)

input_matrix <- matrix(runif(30), ncol = 2)

mean_vector <- colMeans(input_matrix)

centered_matrix <- input_matrix - mean_vector

covariance_matrix <- cov(centered_matrix)

variance_covariance_matrix <- covariance_matrix / (nrow(input_matrix) - 1)

correlation_matrix <- cor(input_matrix)

# Print the results
cat("Input Matrix:\n")
print(input_matrix)
cat("\nMean Vector:\n")
print(mean_vector)
cat("\nCentered Matrix:\n")
print(centered_matrix)
cat("\nCovariance Matrix:\n")
print(covariance_matrix)
cat("\nVariance-Covariance Matrix:\n")
print(variance_covariance_matrix)
cat("\nCorrelation Matrix:\n")
print(correlation_matrix)
