"""
Module that develop the newton's method. 
It is a learning approch. 
"""
def solve(fvals,x0,debug=False):
  """
  Write docstring...
  """
  limit = 200
  tolerance = 1.E-14
  x = x0
  for i in range(limit):
    if debug:
      print "Iteration number %s, x= " % (i,x)
    x_before = x
    x = x + fvals[0](x)/fvals[1](x)
    if abs(x-x_before) < tolerance:
      break
  return x 

def fvals_sqrt(x):
  """
    Return f(x) and fprime - f'(x) - for applying Newton's Method to find square root. 
  """
  f = x**2 - 4 
  fp = 2*x
  #return a tuple
  return (f,fp)

def test1(debug_solve=False):
  """
  Test our function solve
  """
  from numpy import sqrt
  for x0 in [1.,2.,100.]:
    print " " #Blank line
    x,iterations = solve(fvals_sqrt,x0,debug=debug_solve)
    print "Solve returns x = %22.15e after %i iterations "  % (x,iterations)
    fx,fpx = fvals_sqrt(x)
    print "The value of f(x) is %22.15e " %fx
    assert abs(x-2.) < 1.e-14, "*** Unexpected result: x = 22.15e " % x
