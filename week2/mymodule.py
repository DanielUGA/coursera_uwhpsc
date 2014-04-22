"""
  This module implements newton method to solve sqrt.
  by UWHPSC and Thiago
"""
def mysqrt(A,debug=False):
  """
    This function is good
  """
  from numpy import nan
  if A==0.:
    return 0.
  elif A<0.:
    print "*** error, x must be positive"
    return nan
  assert A>0. and type(A) is float, "Unrecognized input"
  x = 1. #Inicial guess
  tolerance = 1.0e-14
  maximo = 100
  for i in range(maximo):
    if debug:
      print "Iteration number %s, the value is %10.10f" % (i,x)
    x_before = x
    x = 0.5 * (x + A/x)
    delta = x_before - x
    if abs(delta/A) < tolerance:
      break
  if debug:
    print "The value for sqrt of %s found was %10.10f" % (A,x)
  return x

def test():
  from numpy import sqrt
  values = [1.,3.,100.,1e-4]
  for i in values:
    print "Testing the value of %20.15e" % i
    x_numpy = sqrt(i)
    x_mysqrt = mysqrt(i)
    print "  mysqrt = %20.15e and numpy = %20.15e" % (x_mysqrt,x_numpy)
    assert abs(x_numpy-x_mysqrt) < 1e-14, "The values disagree"


# This function is only executed if this module is loaded if as script
if __name__ == "__main__":
  print "Runnig test..."
  test()
