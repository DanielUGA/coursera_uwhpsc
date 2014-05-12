program printing
  implicit none
  real (kind=8) :: x,y
  integer :: i
  x = 3.d0
  y = 4.d0
  !$omp parallel do private(y)
  do i=1,100
    y = x
    print *, y
  enddo
  print *, y 

end program printing
!i and y are private variables, x is shared
