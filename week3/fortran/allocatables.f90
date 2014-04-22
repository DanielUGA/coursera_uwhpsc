program allocatables
  implicit none
  real (kind=8), dimension(:), allocatable :: x
  real (kind=8), dimension(:,:), allocatable :: a
  
  allocate(x(2))
  allocate(a(30,10))

  !allocate(x(2),stat=alloc_error)
  ! verifing if there are enough RAM memory for x allocate above
  !if(alloc_error /= 0) then
  !  print *, "Insuficient Memory"
  !  stop 
  !endif
 
  x = (/ 1.,2. /)

  print *,"My x: ", x
  deallocate(x)
  deallocate(a)
end program allocatables
