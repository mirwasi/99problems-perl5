use Test::More;
use Test::Exception;

use FindBin;
use File::Spec;
use lib File::Spec->catdir($FindBin::Bin, '..');

use Solution::Problem1;

# Problem 1

my $t0 = Solution::Problem1->new([5, 4, 3, 2, 1]);
my $t1 = Solution::Problem1->new();
my $t2 = Solution::Problem1->new([]);
my $t3 = Solution::Problem1->new([5]);

ok($t0->last_item() == 1, 'Last item test');
dies_ok { $t1->last_item() } "undef array, should throw exception";
dies_ok { $t2->last_item() } "An empty array, should throw exception";
ok ($t3->last_item() == 5, 'Single item array');

# Problem 1

done_testing();

1;