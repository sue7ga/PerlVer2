use strict;
use warnings;
use utf8;
use Text::CSV_XS;
use Encode qw/encode_utf8 decode_utf8/;

my $csv = Text::CSV_XS->new({binary => 1});

open(my $fh,'<','toukei.csv');

my $year = 1994;
print $year,"年","\n";

while(my $columns = $csv->getline($fh)){
  if($$columns[0] eq 'japan'){
    print "japan","\n";
    print  $$columns[$year - 1990],"\n";
  }elsif($$columns[0] eq 'america'){
    print "america","\n";
    print  $$columns[$year - 1990],"\n";
  }elsif($$columns[0] eq 'german'){
    print "german","\n";
    print  $$columns[$year - 1990],"\n";
  }elsif($$columns[0] eq 'corean'){
    print "corean","\n";
    print  $$columns[$year - 1990],"\n";
  }elsif($$columns[0] eq 'france'){
    print "france","\n";
    print  $$columns[$year - 1990],"\n";
  }elsif($$columns[0] eq 'english'){
    print "english","\n";
    print  $$columns[$year - 1990],"\n";
  }elsif($$columns[0] eq 'italian'){
    print "italian","\n";
    print  $$columns[$year - 1990],"\n";
  }elsif($$columns[0] eq 'canada'){
    print "canada","\n";
    print  $$columns[$year - 1990],"\n";
  }elsif($$columns[0] eq 'australia'){
    print "australia","\n";
    print  $$columns[$year - 1990],"\n";
  }elsif($$columns[0] eq 'china'){
    print "china","\n";
    print  $$columns[$year - 1990],"\n";
  }elsif($$columns[0] eq 'russian'){
    print "russhian","\n";
    print  $$columns[$year - 1990],"\n";
  }elsif($$columns[0] =~ m/^その他$/){
    print "other","\n";
    print $$columns[$year - 1990],"\n";
  }else{
    if($$columns[0] ne 'total'){
      print encode_utf8("その他ヨーロッパ"),"\n" ;
      print $$columns[$year - 1990],"\n";
    }
  }
}



