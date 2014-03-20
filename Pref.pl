use strict;
use warnings;
use Text::CSV_XS;
use IO::File;
use Encode qw/encode_utf8/;

my $csv = Text::CSV_XS->new({binary => 1});
my $io = IO::File->new('./pref.csv',"r");

my $pattern_re = qr/
  (\d+)
  (.+)
/x;

while(my $columns = $csv->getline($io)){
  my $line = @$columns;
  my $id;
  my $pref;
  print encode_utf8($line);
  if($line =~ /$pattern_re/){
    $id = $1;
    $pref = $2;
  }
  print $id,$pref,"\n";
}

use Data::Dumper;
