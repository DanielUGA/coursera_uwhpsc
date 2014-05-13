program thread_safe
  implicit none

  integer :: i  
  real (kind=8), external :: myfcn
  real (kind=8), dimension(3) :: a

  a = (/1.d0,2.d0,3.d0/)

  !$omp parallel do
  do i=1,3
    print *, "if we call the function we get: ",myfcn(a(i))
  enddo
  !$omp end parallel do
end program thread_safe

real (kind=8) function myfcn(x)
  real (kind=8), intent(in) :: x
!  real (kind=8), intent(out) :: myfcn
  ! local variable:
  real (kind=8) :: z
  z = exp(x)
  myfcn = z*cos(x)
end function myfcn
