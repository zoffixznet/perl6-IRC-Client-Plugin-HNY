use v6;
use lib 'lib';
use IRC::Client;
use IRC::Client::Plugin::HNY;

IRC::Client.new(
    :host('irc.freenode.net'),
    :channels('#freenode-newyears'),
    plugins => [ IRC::Client::Plugin::HNY.new ]
).run;
