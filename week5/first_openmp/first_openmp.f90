program first_openmp
  implicit none
  integer :: a
 
  !use omp_lib   

  !$ print *, "Compiled with -fopenmp"
   
  !means: the following loop will do parallel
  !$omp parallel do
  do a=1,20
    print *, "testando ..."
  enddo
  !$omp end parallel do
end program first_openmp
