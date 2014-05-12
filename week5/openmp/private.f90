program privates
  use omp_lib
  implicit none
  integer :: n,i,nthreads
  real (kind=8), dimension(100) :: x
  real (kind=8) :: y

  nthreads = 2
  !$ call omp_set_num_threads(nthreads)
  
  n = 7
  y = 2.d0
  
  ! by default y is shared in parallel code, however, if we turn it private, 
  ! we we not use this initial value of 2.d0, so user firstprivate
  ! to set the new value as the output of parallel code do: lastprivate 

  !$omp parallel do firstprivate(y) lastprivate(y) 
  do i=1,n
    y = y + 10.d0
    x(i) = y
    !$omp critical
      print *, "i = ", i , " x(i) = ", x(i), " y= ", y
    !$omp end critical
  enddo
  
  print *, "At end , y = ", y
end program privates
