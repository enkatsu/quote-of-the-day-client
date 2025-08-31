use strict;
use warnings;
use IO::Socket::INET;

use constant HOST => 'localhost';
# use constant HOST => 'djxmmx.net';
use constant PORT => 17;

my $sock = IO::Socket::INET->new(
    PeerAddr => HOST,
    PeerPort => PORT,
    Proto    => 'tcp'
);

die "IO::Socket : $!" unless $sock;

while (my $line = <$sock>) {
    chomp $line;
    $line =~ s/\r//g;
    $line =~ s/\x00//g;
    print "$line\n";
}

close($sock);
