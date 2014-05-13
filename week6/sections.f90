program sections
  use omp_lib
  implicit none
  integer, parameter :: n = 100000
  real (kind=8),dimension(n:n) :: x,y,z
  integer :: i
 
  !$ call omp_set_num_threads(2)

  !$omp parallel
  !$omp sections
    !$omp section
    x=1.d0
    !$omp section
    y=1.d0
  !$omp end sections

  !$omp barrier

  !$omp single 
    print *, "Done initializations x and y"
  !$omp end single nowait

  !$omp do
  do i=1,n
    z(i) = x(i) + y(i)
  enddo
  !$omp end do

  !$omp end parallel
  
  print *, "max value of z is: ", maxval(z)
  
end program sections
