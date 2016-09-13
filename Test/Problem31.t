use Test::More;
use Test::Exception;

use FindBin;
use File::Spec;
use lib File::Spec->catdir($FindBin::Bin, '..');

use Solution::Problem31;

ok(Solution::Problem31::check_prime(1) eq 'no', '1 test');
ok(Solution::Problem31::check_prime(100030001) eq 'yes', '9-digit prime test');
ok(Solution::Problem31::check_prime(1973) eq 'yes', '1973 is a prime');
ok(Solution::Problem31::check_prime(3892729) eq 'no', '3892729 is 1973x1973');
ok(Solution::Problem31::check_prime(2) eq 'yes', '2 test');
ok(Solution::Problem31::check_prime(4535435) eq 'no', 'Random composite test');
ok(Solution::Problem31::check_prime(23432) eq 'no', 'Random composite test');
ok(Solution::Problem31::check_prime(999999) eq 'no', 'Random composite test');
dies_ok { Solution::Problem31::check_prime(0) } "Zero test";
dies_ok { Solution::Problem31::check_prime(-500) } "Negative test";

# Problem 31

done_testing();

1;