program threads
  use omp_lib, only: omp_set_num_threads, omp_get_thread_num
  integer :: num_threads,n

  print *, "compile this code with flag: fopenmp"

  print *, "specify the number of threads you would like to use in this fortran code: "
  read *,num_threads
  
  !$ call omp_set_num_threads(num_threads)
  
  ! the code below executes the num_threads times
  ! each thread works independently of each other

  !$omp parallel

  ! The critical block indicates that this piece is executed one thread at time
  !$omp critical 
  !$ n = omp_get_thread_num()
  !$ print *,"This is the thread number: ", n
  !$omp end critical

  !$omp end parallel

end program threads
