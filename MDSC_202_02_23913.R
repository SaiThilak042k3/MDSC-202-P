'''
ASSIGNMENT - 02 

In a Matrix, Find 
Eigen vaules,
Eigen vectors,
Normalizised eigen vector.
'''

#defining matrix A
A <- matrix(c(2,4,6,8,3,5,7,6,4), 3, 3, byrow = TRUE)
A

#eigen function to find the values and vectors
e<- eigen(A)

#eigen values
eigen_values <- e$values
print(eigen_values)

#eigen vectors
eigen_vectors <- e$vectors
print(eigen_vectors)

#normalized eigen vector
norm_eigen_vectors <- eigen_vectors / sqrt(rowSums(eigen_vectors^2))
print(norm_eigen_vectors)

