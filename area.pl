use strict;
use warnings;

my $datafile = "city.txt";
open(FH,$datafile);
my @city_list = <FH>;
my $recores = [];

foreach my $city (@city_list){
  chomp($city);
  next if $city =~ /^\n/;
  my $area;
  if($city =~ /^([^：])$/){
    $area = $1;
  }
  print $area,"\n";
}

