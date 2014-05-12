program nestedLoop
  implicit none
  integer, parameter :: n = 200, m= 200
  integer :: i,j
  real (kind=8), dimension(n,m) :: a

  !by default, j will be private
  !$omp parallel do private(i)
  do j=1,n
    do i=1,m
      !print *, "hello"
      a(i,j) = 0.d0
    enddo
  enddo
  !omp end parallel do

end program nestedLoop
