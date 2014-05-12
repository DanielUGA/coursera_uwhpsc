program reduction
  implicit none
  real (kind=8), dimension(3) :: x
  real (kind=8) :: norm
  integer :: i
  x = (/ 1.d0,2.d0,3.d0 /)
  norm = 0.d0

  !$omp parallel do reduction(+ : norm)
  do i=1,3
    norm = norm + abs(x(i))
  enddo
  !$omp end parallel do
  print *,norm
end program reduction
