package Solution::Problem2;

use strict;
use warnings;

sub new {
    my $class = shift;
    my $items = shift;
    return bless { items => $items }, $class;
}

sub second_last_item {
    my $self  = shift;
    my $array = $self->{items};

    die "No array was set" unless $array;
    die "Array having less than two items cannot have a second last element"
        unless scalar(@$array > 1);
    # The conventional way
    # return @{ $array }[-2];

    # Fancy way
    # Explanation: http://thisthread.blogspot.nl/2011/02/dollar-pound.html

    return $array->[$#$array - 1];
 }

1;

=pod
=head1 Problem 2
=head2 Find the last but one element of an array
