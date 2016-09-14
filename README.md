# 99problems-perl5

This is an attempt to solve a list of 99 problems compiled by Werner Hett in Perl5, originally titled "P-99: Ninety-Nine Prolog Problems". I didn't follow the numbering scheme used by Werner, rather took it from [this](http://www.ic.unicamp.br/~meidanis/courses/mc336/2009s2/prolog/problemas/) page.

## Project structure
The solutions are inside the Solution directory, in the form Problem<Number>.pm. Code shared by a bunch of problems are put together in base modules, prefixed as 'Base'.

The unit test files are put inside the Test directory, the naming scheme is similar to the solutions with .t exension.

## Testing

To test all the solutions, run: `./test-all.pl`
To test an indivitial solution just run the test file insite Test directory with perl.