program hello_world
	implicit none
	real :: x0, r, x, step
	integer :: i, k, points, factor1, factor2, divisor, n
	!Start Q4
	print *, "Enter the first (larger) number you want to find the GCD of:"
	read *, factor1
	print *, "Enter the second (smaller) number you want to find the GCD of:"
	read *, factor2
	divisor = gcd(factor1, factor2)
	print *, "GCD| ", divisor
	contains
	function gcd(factor1, factor2) result(res_value)
		integer, intent(in) :: factor1, factor2
		integer :: remainder, a, b, res_value
        a = factor1
        b = factor2
        remainder = mod(a, b)
        do while (remainder /= 0)
            a = b
            b = remainder
            remainder = mod(a, b)
        end do
		res_value = b
	
	end function gcd
end program hello_world
