package Solution::Problem1;

use strict;
use warnings;

use parent qw(Solution::BaseList);

sub last_item {
    my $self = shift;
    my $array = $self->{items};

    die "No array was set" unless $array;
    die "Empty array cannot have a last element"
        unless scalar(@$array) > 0;

    # The conventional way
    # return @{ $array }[-1];

    # Fancy way
    # Explanation: http://thisthread.blogspot.nl/2011/02/dollar-pound.html

    return $array->[$#$array];
}

1;

=pod
=head1 Problem 1
=head2 Find the last element of an array
