package Solution::Problem32;

use strict;
use warnings;

use parent qw(Solution::BaseMath);

sub get_gcd {
    my ($a, $b) = @_;

    die "Two interger need to be given"
		unless (defined($a) && defined($b));
	die "GCD of pair of zeros is not defined"
		unless ($a > 0 || $b > 0);

    return Solution::BaseMath::gcd($a, $b);
}

1;

=pod
=head1 Problem 32
=head2 Return the greatest common divisor of two numbers
