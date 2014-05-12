program yeval
  use omp_lib
  implicit none
  integer, parameter :: n = 1.d8
  integer :: i,nthreads
  real (kind=8), dimension(n) :: y
  real (kind=8) :: dx,x
  
  !specify the number os threads
  !$ print *, "How many thread do you want to use?"
  !$ read *, nthreads
  !$ call omp_set_num_threads(nthreads)
  !$ print "('Using OpenMP with ', i3, ' threads')",nthreads
 
  dx = 1.d0/(n+1.d0) ! if we want use dx as private, we must use firstprivate(dx)
  !$omp parallel do private(x)
  do i=1,n
    x = i*dx
    y(i) = exp(x)*cos(x)*sqrt(5*x+6.d0)
    !print *,y(i)
  enddo

  print *, "filled vector y of length ", n
end program yeval

!ulimit -s
!ulinit -s unlimited
