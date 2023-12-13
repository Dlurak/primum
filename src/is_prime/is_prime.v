module is_prime

pub fn is_prime(number u16) bool {
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
