program test
  implicit none
  integer, parameter :: m=3,n=3
  real (kind=8), dimension(m,n) :: a
  integer :: i,j

  !$omp parallel do
  do j=1,m
    do i=1,n
      a(i,j) = float(i + j)
    enddo
  enddo 
  print *,a
end program test
