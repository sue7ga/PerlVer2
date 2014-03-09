use strict;
use warnings;
use Carp;

my $file = "city.txt";
croak "Usage: $0 File" unless defined $file;

open my $fh,'<',$file or croak "Can't open $file";

my $city_infos = [];

  my $area;

while(my $line = <$fh>){
  chomp $line;
  next unless $line;
  my $city_info = {};
  my ($id,$city) = split/：/,$line;
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




