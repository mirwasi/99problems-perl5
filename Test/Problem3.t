use Test::More;
use Test::Exception;

use FindBin;
use File::Spec;
use lib File::Spec->catdir($FindBin::Bin, '..');

use Solution::Problem3;

# Problem 3

my $t0 = Solution::Problem3->new([5, 4, 3, 2, 1]);
my $t1 = Solution::Problem3->new();
my $t2 = Solution::Problem3->new([]);
my $t3 = Solution::Problem3->new([5]);

ok($t0->kth_item(5) == 1, 'Last item test');
ok($t0->kth_item(1) == 5, 'First item test');
dies_ok { $t1->kth_item(1) } "undef array, should throw exception";
dies_ok { $t2->kth_item(4) } "An empty array, should throw exception";
dies_ok { $t2->last_item(0) } "Nothing called a 0-th item, should throw exception";
ok ($t3->kth_item(1) == 5, 'Single item array');

# Problem 3

done_testing();

1;