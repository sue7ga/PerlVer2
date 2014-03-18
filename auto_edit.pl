use strict;
use warnings;
use FindBin;
use File::Spec;
use XML::Simple;
use File::Basename 'fileparse';


my $date = shift || '';

die "Usage :$0 yyyymmdd\n" unless $date =~ /^\d{8}$/;


my $conf_file = "$FindBin::Bin/auto_edit.xml";

my $xml = XML::Simple->new;
my $conf = $xml->XMLin($conf_file);

my $home_dir = $conf->{'home-dir'};

my $log_dir = File
