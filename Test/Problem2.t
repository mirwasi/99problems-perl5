use Test::More;
use Test::Exception;

use FindBin;
use File::Spec;
use lib File::Spec->catdir($FindBin::Bin, '..');

use Solution::Problem2;

# Problem 2

my $t0 = Solution::Problem2->new([5, 4, 3, 2, 1]);
my $t1 = Solution::Problem2->new();
my $t2 = Solution::Problem2->new([]);
my $t3 = Solution::Problem2->new([5]);
my $t4 = Solution::Problem2->new([5, 4]);

ok($t0->second_last_item() == 2, 'Second item test');
dies_ok { $t1->second_last_item() } "undef array, should throw exception";
dies_ok { $t2->second_last_item() } "An empty array, should throw exception";
dies_ok { $t3->second_last_item() } "A single item array, should throw exception";
ok ($t4->second_last_item() == 5, 'Two item array');

# Problem 2

done_testing();
1;
