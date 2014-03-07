use strict;
use warnings;
use utf8;
use Text::CSV;
#use Encode qw/encode_utf8 decode_utf8/;

my $csv = Text::CSV->new({
   auto_diag => 1,
   binary  => 1,
});

open(my $fh,'<:encoding(utf-8)','toukei.csv');

while(my $row = $csv->getline($fh)){
  print Encode::encode('utf-8',$row->[0]),"\n";
  print Encode::encode('utf-8',$row->[1]),"\n";
  print Encode::encode('utf-8',$row->[2]),"\n";
  print Encode::encode('utf-8',$row->[3]),"\n";
  print Encode::encode('utf-8',$row->[4]),"\n";
  print Encode::encode('utf-8',$row->[5]),"\n";
  print Encode::encode('utf-8',$row->[6]),"\n";
  print Encode::encode('utf-8',$row->[7]),"\n";
  print Encode::encode('utf-8',$row->[8]),"\n";
  print Encode::encode('utf-8',$row->[9]),"\n";
  print Encode::encode('utf-8',$row->[10]),"\n";
}


