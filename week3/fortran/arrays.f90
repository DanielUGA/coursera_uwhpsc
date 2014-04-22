program arrays
  implicit none
  real (kind=8), dimension(3) :: x,y,z
  integer :: a(0:4), b(5)  
 
  a = (/10,20,30,40,50/)
  b = a
  print *, b(2)

  x = (/ 2., 4., 8. /)
  y = (/ 3., 5., 9. /)
  !Component-wise operations
  print *, "x: ", x 
  print *, "y: ", y 
  print *, " x**2 + 2*y + x*y " 
  print *,  x**2 + 2*y + x*y
 
  print *, "The scalar product between x and y"
  print *,dot_product(x,y)

end program arrays
