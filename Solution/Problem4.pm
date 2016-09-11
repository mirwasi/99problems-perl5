package Solution::Problem4;

use strict;
use warnings;

use parent qw(Solution::BaseList);

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
