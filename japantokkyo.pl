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
  print Encode::encode('utf-8',@{$row}),"\n";
}


__DATA__
,1991年,1992年,1993年,1994年,1995年,1996年,1997年,1998年,1999年,2000年
日本,84.4,85.8,87.5,88.3,86.9,87.3,88,88.9,89.3,89.2
米国,7.2,6.6,6,5.9,6.8,6.6,5.9,5,4.7,4.8
ドイツ,3.3,3,2.5,2.2,2.4,2.2,2,1.9,1.8,1.7
その他ヨーロッパ(注１),2,2.3,2.1,1.8,1.5,1.5,1.6,1.4,1.4,1.3
韓国,0,0,0.1,0.1,0.2,0.4,0.6,0.9,1.1,0.9
フランス,1.1,1,0.8,0.8,0.9,0.8,0.8,0.8,0.7,0.6
イギリス,0.7,0.6,0.6,0.5,0.5,0.5,0.4,0.5,0.4,0.4
イタリア,0.4,0.3,0.3,0.3,0.2,0.3,0.3,0.2,0.2,0.2
カナダ,0.2,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1
オーストラリア,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0,0.1,0.1
中国,0,0,0,0,0,0,0,0,0,0
ロシア,0.2,-,0,0,-,0,0,0,0,0
その他,0.4,0.4,0.3,0.3,0.3,0.3,0.2,0.2,0.3,0.7
合計,100,100,100,100,100,100,100,100,100,100
