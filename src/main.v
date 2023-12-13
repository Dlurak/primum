module main

import os
import flag

fn main() {
	mut fp := flag.new_flag_parser(os.args)

	fp.application('Primum')
	fp.version('0.0.1')
	fp.description('A simple CLI to find out if a number is a prime number or not.')
	fp.skip_executable()

	fp.limit_free_args_to_exactly(1) or {
		println(fp.usage())
		return
	}

	fp.arguments_description('The number which should be tested is the argument which must be positive, this number is stored in a unsigned integer 16')

	number_as_string := fp.remaining_parameters()[0]
	number := number_as_string.int()

	if number < 0 {
		println(fp.usage())
		return
	}

	if is_prime(u16(number)) {
		println('${number} is a prime')
	} else {
		println('${number} is not a prime')
	}
}

fn is_prime(number u16) bool {
	if number == 2 || number == 3 {
		return true
	}
	if number <= 1 || number % 2 == 0 || number % 3 == 0 {
		return false
	}

	for i := u16(5); i * i <= number; i += 6 {
		if (number % i) == 0 {
			return false
		}
	}

	return true
}
