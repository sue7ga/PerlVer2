use strict;
use warnings;
use utf8;
use Carp;
use JSON;

use WebService::Simple;
use Encode qw/encode_utf8 decode_utf8/;

use constant BASEURI => 'http://weather.livedoor.com/forecast/webservice/json/v1';

use Data::Dumper;

  my $agent = WebService::Simple->new(
    base_url => BASEURI,
    response_parser => 'JSON',
  );
  my $res = $agent->get({ city => 400040});
  my $ref = $res->is_success? decode_json($res->{_content}):"";
  print Dumper $ref->{location}->{area};



