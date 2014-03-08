use strict;
use warnings;

my @nums = @ARGV;

my $total = sum(@nums);


print "$total","\n";


sub sum{ 
  my @nums = @_;
  my $total = 0;
  foreach(@nums){
    $total += $_;
  }
  return $total;
}


