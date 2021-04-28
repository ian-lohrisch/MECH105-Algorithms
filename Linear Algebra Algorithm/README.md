# Linear Algebra Algorithm    
    
**Summary:**    
Serves as a function that takes input A which respresents a coefficient matrix. Checks if the matrix is a square and returns an error if not. Goes through A matrix by each column, neglecting to go to the last column. For whichever column the code is in, it finds the maximum value and pivots the rows so that the largest magnitude of a number ends up as the pivoting element. It then goes through the rows of the column to calculate the ratios needed to eliminate numbers for the U matrix and stores those ratios in the L matrix. Returns an L (lower triangular matrix), a U (upper trianglular matrix), and P (the pivot matrix).
    
**Inputs:**   
A - coefficient matrix    
   
**Outputs:**   
L - lower triangular matrix, with 1's along the diagonals    
U - upper triangular matrix    
P - the pivot matrix   
    
**Limitations:**     
Could not get the function to get 'Correct solutions for hard matrix' meaning that my L matrix is incorrect when A is too large.