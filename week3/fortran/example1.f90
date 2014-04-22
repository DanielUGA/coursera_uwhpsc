program example1
  !A linha abaixo indica que só podemos usar variáveis declaras
  implicit none
  real (kind=8) :: x,y,z

  x = 3.d0
  y = 1.d-1
  z = x + y
  print *,"z = ", z
end program example1

!Rodando
!1) Compila: gfortran -c example1.f90
!2) Link the files: gfortran example1.o -o example1.out
