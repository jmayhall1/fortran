program module2
	implicit none
	!Start Q1
	integer :: n
	print *, 'Input the Fib number'
	read(*,*) n
	print *, fib(n)
	contains
	recursive integer function fib (n) result(res)
		integer, intent(in) :: n
		if (n <= 1) then
			res = n
		else
			res = fib(n - 1) + fib(n - 2)
		end if
	end function fib
		
end program module2
