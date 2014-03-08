use strict;
use warnings;
use utf8;
use Text::CSV_XS;
use Encode qw/encode_utf8 decode_utf8/;

my $csv = Text::CSV_XS->new({binary => 1});

open(my $fh,'<','toukei.csv');

while(my $columns = $csv->getline($fh)){
 print encode_utf8("@$columns"),"\n";
}



