program private1
  use omp_lib
  implicit none
  integer :: n,i,nthreads
  real (kind=8), dimension(100) :: x
  real (kind=8) :: y

  nthreads = 2
  !$ call omp_set_num_threads(nthreads)
  
  n = 7
  y = 2.d0
  !$omp parallel do default(private) shared(x) firstprivate(y) lastprivate(y)
  do i=1,n
    y = y + 10.d0
    x(i) = y
    !$omp critical
      print *, "i = ", i , " x(i) = ", x(i), " y= ", y
    !$omp end critical
  enddo
  !$omp end parallel do
  print *, "At end , y = ", y
end program private1
