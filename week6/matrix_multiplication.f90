program matrix_multiplication
  implicit none

  integer :: i,j,k,n
  n = 5
  real (kind=8), dimension(n:n) :: a,b,c
  
  print *, "Have you used -fopemmp flag to compile this code?"
  print *, "this code is not working, fix it now!!!"

  !$omp parallel do private(i,k)
  do j=1,n
    do i=1,n
      c(i,j) = 0.d0
      do k=1,n
       ! c(i,j) = c(i,j) + a(i,k)*b(k,j)
        c(i,j) = c(i,j) + 1.d0
      enddo
    enddo
  enddo

end program matrix_multiplication
