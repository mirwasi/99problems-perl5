package Solution::Problem3;

use strict;
use warnings;

use parent qw(Solution::BaseList);

sub kth_item {
    my ($self, $k) = @_;
    my $array = $self->{items};

    die "No array was set" unless $array;
    die "No k was specified" unless $k;
    die "Array having less than k items cannot have a k-th element"
	unless 1 <= scalar(@$array) && scalar(@$array) >= $k;

    return $array->[$k - 1];
}

1;

=pod
=head1 Problem 3
=head2 Find the kth element of an array
