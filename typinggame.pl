use strict;
use warnings;

my $a = <STDIN>;
my $input = <STDIN>;
chomp($input);

my ($b,$c) = split / /,$input;

my $ret = $a + $b + $c;

my $s = <STDIN>;
chomp($s);

print "$ret $s","\n";
















