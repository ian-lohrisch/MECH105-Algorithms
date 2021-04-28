# False Position Algorithm    
    
**Summary:**    
Serves as a function that takes input func,xl,xu,es,maxit, and varargin and outputs the estimated root, the function evaluated at the root, the approximate relative error, and the number of iterations that were performed. Checks to see if the function is positive when evaluated at endpoints, if so returns an error. If es and maxit are not given by the user, then they default to .0001 and 200. Then uses a while loop to apply false position formulas until either the number of iterations are equal to or greater than the specified maxit or until the approximate relative error is below or equal to the given stopping criterea. Then outputs the root value, the function evaluated at the root, the approximate relative error calculated, and the number of iterations completed.
    
**Inputs:**   
func - the function being evaluated    
xl - the lower guess    
xu - the upper guess     
es - the desired relative error (should default to 0.0001%)    
maxit - the maximum number of iterations to use (should default to 200)    
varargin, . . . - any additional parameters used by the function    
     
**Outputs:**   
root - the estimated root location     
fx - the function evaluated at the root location    
ea - the approximate relative error (%)   
iter - how many iterations were performed   
    
**Limitations:**     
Passed 100% in MATLAB Grader, works for all cases as far as I know.