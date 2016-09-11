use Test::More;
use Test::Exception;

use FindBin;
use File::Spec;
use lib File::Spec->catdir($FindBin::Bin, '..');

use Solution::Problem6;

# Problem 6

my $t0 = Solution::Problem6->new([5, 4, 3, 2, 1]);
my $t1 = Solution::Problem6->new([5, 4, 3, 4, 5]);
my $t2 = Solution::Problem6->new([5, 4, 4, 5]);
my $t3 = Solution::Problem6->new([5]);
my $t4 = Solution::Problem6->new([]);

ok($t0->check_palindrome() == "no", 'No test');
ok($t1->check_palindrome() == "yes", 'Yes test');
ok($t2->check_palindrome() == "yes", 'Even length test');
ok($t3->check_palindrome() == "yes", 'One item test');
ok($t4->check_palindrome() == "yes", 'Zero item test');

# Problem 6

done_testing();

1;