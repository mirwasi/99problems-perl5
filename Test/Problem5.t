use Test::More;
use Test::Exception;

use FindBin;
use File::Spec;
use lib File::Spec->catdir($FindBin::Bin, '..');

use Solution::Problem5;

# Problem 5

my $t0 = Solution::Problem5->new([5, 4, 3, 2, 1]);

ok(@{$t0->reverse_list()} == @{[1, 2, 3, 4, 5]}, 'Basic test');

# Problem 5

done_testing();

1;