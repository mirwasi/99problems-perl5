package Solution::Problem4;

use strict;
use warnings;

sub new {
    my $class = shift;
    my $items = shift;
    return bless { items => $items }, $class;
}

sub length {
    my $self  = shift;
    my $array = $self->{items};

    die "No array was set" unless $array;

    return scalar(@$array);
 }

1;

=pod
=head1 Problem 4
=head2 Return length of an array
