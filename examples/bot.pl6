use v6;
use Number::Denominate;

sub utc-hny {
    my $now-utc = DateTime.now.utc;
    my $year = $now-utc.month == any(6..12)
        ?? $now-utc.year+1 !! $now-utc.year;

    return $now-utc.clone:
        :year($year) :month(1) :day(1) :hour(0) :minute(0) :second(0);
}

my $utc-hny = utc-hny;
# say denominate $utc-hny.Instant - DateTime.now.utc.Instant;
 say DateTime.now.Instant;
 say DateTime.now.utc.Instant;
# say DateTime.now.utc.year;

=finish
use lib <lib /var/www/tmp/perl6-IRC-Client/lib>;
use IRC::Client;
use IRC::Client::Plugin::HNY;

get_UTC_offsets();
# IRC::Client.new(
#     :host('10.10.11.12'),
#     :channels('#zofbot'),
#     plugins => [ IRC::Client::Plugin::HNY.new ]
# ).run;
