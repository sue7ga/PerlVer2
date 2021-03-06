use strict;
use warnings;

my $datafile = "city.txt";

open(FH,$datafile);

my @city_list = <FH>;
my $records = [];

my $pattern_re = qr/
  ^
   (\d{6})
  ：
   (\w+)
  $
/x;

foreach my $city (@city_list){
  chomp($city);
  my $area = $1  if $city =~ /^(\w+)(県|地方|府|都)$/;
  my $id;
  my $city;
  my $record = {};
  if($city =~ /$pattern_re/){
      $id = $1;
      $city = $2;
  }
  $record->{$area}->{id} = $id;
  $record->{$area}->{city} = $city;
  push @$records,$record;
}

use Data::Dumper;
print Dumper $records;

