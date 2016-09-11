package Solution::Problem6;

use strict;
use warnings;

use Solution::Problem5;

sub new {
    my $class = shift;
    my $items = shift;
    return bless { items => $items }, $class;
}

sub check_palindrome {
    my $self = shift;
    my $array = $self->{items};

    die "No array was set" unless $array;

    my $rev_array =
	Solution::Problem5->new($self->{items})->reverse_array();

    return @$array == @$rev_array ? "yes" : "no";
}

1;

=pod
=head1 Problem 6
=head2 Check if the given array is a palindrome
