#!/usr/bin/perl -w

use strict;
use warnings;
use Test::Harness;

opendir(DIR, "./Test");
my @files = grep(/\.t$/,readdir(DIR));
closedir(DIR);

foreach my $file (@files) {
    print STDERR "Running $file\n";
    system "perl Test/$file\n";
}

1;
