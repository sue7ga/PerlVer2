use strict;
use warnings;
use JSON;
use WebService::Simple;
use utf8;
use Encode qw/encode_utf8 decode_utf8/;

use constant BASEURL => 'http://weather.livedoor.com/forecast/webservice/json/v1';

my $agent = WebService::Simple->new(
  base_url => BASEURL,
  response_parser => 'JSON',
);

use Data::Dumper;

my $res = $agent->get({city => '400040'});
my $ref = $res->is_success? decode_json($res->{_content}):"";

print Dumper encode_utf($ref);



