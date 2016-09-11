package Solution::Problem5;

use strict;
use warnings;

use parent qw(Solution::BaseList);

sub reverse_array {
    my $self = shift;
    my $array = $self->{items};

    die "No array was set" unless $array;
    # Note: The return value of reverse depends
    # on context
    my @rev_array = reverse @$array;
    # Our input is an array-ref, response is
    # also an array-ref
    return \@rev_array;
}

1;

=pod
=head1 Problem 5
=head2 Reverse an array
