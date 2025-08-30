use strict;
use warnings;
use IO::Socket::INET;

use constant HOST => 'djxmmx.net';
use constant PORT => 17;

my $sock = IO::Socket::INET->new(
    PeerAddr => HOST,
    PeerPort => PORT,
    Proto    => 'tcp'
);

die "IO::Socket : $!" unless $sock;

print <$sock>;

close($sock);
