use strict;
use warnings;

my @types = qw/sue @-type 2#$%* regrep/;

my $count = scalar @types;

my $correct = 0;

foreach my $element(@types){
    print $element,"\n";
    print "Please enter your answer","\n";
    my $answer = <STDIN>;
    chomp($answer);
    chomp($element);
    if($answer =~ m/\Q$element\E/){
         $correct++;
    }
}

print "your correct answer is ",$correct,"\n";

if($count == $correct){
  print "congratulations! all answers is correct!","\n";
}

