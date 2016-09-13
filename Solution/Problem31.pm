package Solution::Problem31;

use strict;
use warnings;

use parent qw(Solution::BaseMath);

sub check_prime {
    (my $number) = @_;

    die "No input was given" unless $number;

    return Solution::BaseMath::is_prime($number) ?
	"yes" : "no";
}

1;

=pod
=head1 Problem 31
=head2 Check if the given number is a prime
