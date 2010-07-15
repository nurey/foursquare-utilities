use strict;

use JSON::XS;
use Data::Dumper;

my $wanted_venue_name = shift;

print "Looking for $wanted_venue_name\n";

my @json_data = <STDIN>;
my $json_string = join "\n", @json_data;

my $json_coder = JSON::XS->new();
my $history = $json_coder->decode($json_string);
my $checkins = $history->{checkins};
my @wanted_checkins = grep { $_->{venue}{name} eq $wanted_venue_name } @$checkins;
print Dumper \@wanted_checkins;