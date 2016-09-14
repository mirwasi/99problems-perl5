package Solution::BaseMath;

use strict;
use warnings;

# Doesn't work with big numbers due to overflow

sub is_prime {
    my ($number) = @_;

    die "No input was given" unless $number;
    die "Input should be positive" unless $number > 0;

    # 1 is not a prime, by definition
    return 0 if $number == 1;

    for (my $i = 2; $i * $i <= $number; $i++) {
	return 0 if ($number % $i == 0);
    }

    return 1;
}

sub gcd {
	my ($a, $b) = @_;

	die "Two numbers should be provided"
		unless (defined($a) && defined($b));
	die "GCD of pair of zeros is not defined"
		unless ($a > 0 || $b > 0);

	# gcd(a, b) = gcd(-a, b) = gcd(a, -b) = gcd(-a, -b)
	$a = -$a if ($a < 0);
	$b = -$b if ($b < 0);

	while ($b > 0) {
		($a, $b) = ($b, $a % $b);
	}

	return $a;
}

1;

=pod
=head1 Base module for math functions
