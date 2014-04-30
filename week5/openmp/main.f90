program main
  use omp_lib, only: omp_set_num_threads,omp_get_num_threads,omp_get_thread_num
  implicit none
  integer :: thread_num,threads_num
  !The follow line specifies the number of threads to use
  !$ call omp_set_num_threads(2)

  print *, "testing OpenMP... "
  !$omp parallel
  !$omp critical
    !$ threads_num = omp_get_num_threads()
    !$ threads_num = omp_get_num_threads()
    !$ thread_num = omp_get_thread_num()
    !$ print *, "This thread = ", thread_num
    !$ print *, "of a total of ", threads_num
    !$ print *, " " ! Blank line
  !$omp end critical
  !$omp end parallel
 
end program main


!notes
!block parallel: indicates that this block will use parallel thread
!block critical: indicates that each thread only can be executed by one processor
