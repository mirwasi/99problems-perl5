package Solution::BaseList;

use strict;
use warnings;

sub new {
    my $class = shift;
    my $items = shift;
    return bless { items => $items }, $class;
}

1;

=pod
=head1 BaseList
=head2 Base for list problems [1-30]

