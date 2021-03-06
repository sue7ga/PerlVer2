use strict;
use warnings;
use utf8;
use Text::CSV_XS;
use Encode qw/encode_utf8 decode_utf8/;

my $csv = Text::CSV_XS->new({binary => 1});

open(my $fh,'<','toukei.csv');

my $year = 1994;
print $year,"年","\n";

my @countries = qw/japan english german korean france england italian canada australia china russhian other othereurope/;

my %countries = map{$_ => 1}@countries;

my $year_count = $year - 1990;

while(my $columns = $csv->getline($fh)){
 my $country = $columns->[0];
  if($countries{$country}){
   print $country,"\n";
   my $score = $columns->[$year_count] || 0,"\n";
   print $score,"\n";
  }
}
