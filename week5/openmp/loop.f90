program loop
  implicit none
  integer, parameter :: i = 200
  integer :: n

  !$omp parallel do if (i > 100)
  do n=1,i
    print *,"Eu sou o numero n ", n
  enddo
  !omp end parallel do

end program loop
