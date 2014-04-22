program ifelse
  implicit none
  real (kind=8) :: x
  integer :: i

  ! /= means 'not equal'
  x = 1
  if (x < 2) then
    print *, "i is less than 2"
  else if (i/=5) then
    print *,"i is greater than 2, however, not equal to 5"
  else
    print *,"i is equal to 5"
  endif
end program ifelse
