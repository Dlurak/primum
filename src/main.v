module main

import os
import flag
import is_prime

fn main() {
	mut fp := flag.new_flag_parser(os.args)

	fp.application('Primum')
	fp.version('0.0.2')
	fp.description('A simple CLI to get details about a number')
	fp.skip_executable()

	mode := fp.string('mode', `m`, 'prime', 'The mode chose from prime, even or odd')

	fp.limit_free_args_to_exactly(1) or { exit_with_error(fp) }

	fp.arguments_description('The number which should be tested is the argument this number is stored in a unsigned integer 16')

	number_as_string := fp.remaining_parameters()[0]
	number := number_as_string.int()

	match mode {
		'prime' {
			if is_prime.is_prime(number) {
				println('${number} is a prime')
			} else {
				println('${number} is not a prime')
			}
		}
		'odd', 'even' {
			if number % 2 == 0 {
				println('${number} is even')
			} else {
				println('${number} is odd')
			}
		}
		else {
			exit_with_error(fp)
		}
	}
}

fn exit_with_error(fp flag.FlagParser) {
	println(fp.usage())
	exit(1)
}
