package Solution::Problem6;

use strict;
use warnings;

use parent qw(Solution::BaseList);

use aliased "Solution::Problem5" => "ListReverser";

sub check_palindrome {
    my $self = shift;
    my $array = $self->{items};

    die "No array was set" unless $array;

    my $rev_array =
	ListReverser->new($self->{items})->reverse_list();

    return @$array == @$rev_array ? "yes" : "no";
}

1;

=pod
=head1 Problem 6
=head2 Check if the given array is a palindrome
