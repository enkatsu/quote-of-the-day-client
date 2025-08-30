use IO::Socket;

use constant HOST => 'djxmmx.net';
use constant PORT => 17;

$sock = new IO::Socket::INET(
    PeerAddr=>HOST,
	PeerPort=>PORT,
	Proto=>'tcp'
);

die "IO::Socket : $!" unless $sock;

print <$sock>;

close($sock);
