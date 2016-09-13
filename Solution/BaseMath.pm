package Solution::BaseMath;

use strict;
use warnings;

# Doesn't work with big numbers due to overflow

sub is_prime {
    (my $number) = @_;

    die "No input was given" unless $number;
    die "Input should be positive" unless $number > 0;

    # 1 is not a prime, by definition
    return 0 if $number == 1;

    for (my $i = 2; $i * $i <= $number; $i++) {
	return 0 if ($number % $i == 0);
    }

    return 1;
}

1;

=pod
=head1 Base module for math functions
