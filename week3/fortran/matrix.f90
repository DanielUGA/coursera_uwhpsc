program matrix
  implicit none
  real (kind=8), dimension(3,3) :: A,AT
  integer :: i
  !3 lines and 3 columns
  A = reshape( (/1,2,3,4,5,6,7,8,9/),(/3,3/) )
  print *, "value of line 3 and column 1: ", A(3,1)
  
  do i=1,3
    print *, "Elements of row: ", i
    print *, A(i,:)
  enddo
  AT = transpose(A)
  print *, "A multipled by A transposed", matmul(A,AT)
end program matrix
