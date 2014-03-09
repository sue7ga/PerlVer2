use strict;
use warnings;
use Carp;

my $file = "city.txt";

croak "Usage: $0 File" unless defined $file;

open my $fh,'<',$file or croak "Can't open $file";

my $city_infos = {};

while(my $line = <$fh>){
  chomp $line;
  next if $line =~ /^\n/;
  my $city_info = {};
  my ($id,$city) = split/：/,$line;
  my $area;
  if(!defined $city){
    $area = $id;
    next;
  }
  $city_info->{$area}->{id}   = $id;
  $city_info->{$area}->{city} = $city;
  push @$city_infos,$city_info;
}

use Data::Dumper;
print Dumper $city_infos;




