use Test::More;
use Test::Exception;

use FindBin;
use File::Spec;
use lib File::Spec->catdir($FindBin::Bin, '..');

use Solution::Problem4;

# Problem 4

my $t0 = Solution::Problem4->new([5, 4, 3, 2, 1]);
my $t1 = Solution::Problem4->new();
my $t2 = Solution::Problem4->new([]);
my $t3 = Solution::Problem4->new([5]);
my $t4 = Solution::Problem4->new([5, 4]);

ok($t0->length() == 5, '5-element list test');
dies_ok { $t1->length() } "undef array, should throw exception";

# Problem 4

done_testing();
1;
