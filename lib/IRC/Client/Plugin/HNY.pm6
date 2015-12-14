use v6;
use JSON::Tiny;
use IRC::Client::Plugin;
unit class IRC::Client::Plugin::HNY:ver<1.001001> is IRC::Client::Plugin;

get_UTC_offsets();

sub get_UTC_offsets {
    my $times = from-json 'tzs.json'.IO.slurp;

    for $times -> $zone {
        say "Offset is $zone<offset>";
    }
}
