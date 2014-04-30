program first_openmp
  use omp_lib   
  implicit none
  integer :: a
 

  !$ print *, "Compiled with -fopenmp"
   
  !means: the following loop will do parallel
  !$omp parallel do
  do a=1,20
    print *, "testando ..."
  enddo
  !$omp end parallel do
end program first_openmp
