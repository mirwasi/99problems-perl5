use Test::More;
use Test::Exception;

use FindBin;
use File::Spec;
use lib File::Spec->catdir($FindBin::Bin, '..');

use Solution::Problem32;

# Problem 32

ok(Solution::Problem32::get_gcd(1, 0) == 1, '1 test');
ok(Solution::Problem32::get_gcd(100030001, 123213) == 1, '1 test');
ok(Solution::Problem32::get_gcd(1024, 64) == 64, 'Power of two test');
ok(Solution::Problem32::get_gcd(36, 63) == 9, 'Random test');
ok(Solution::Problem32::get_gcd(-36, -63) == 9, 'Both negative test');
dies_ok { Solution::Problem32::get_gcd(0) } "One arg missing test";
dies_ok { Solution::Problem32::get_gcd(0, 0) } "Both zero test";

# Problem 32

done_testing();

1;