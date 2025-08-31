require 'socket'

HOST = 'localhost'
# HOST = 'djxmmx.net'
PORT = 17
BUFSIZE = 512

socket = TCPSocket.new(HOST, PORT)

puts socket.read(BUFSIZE)

socket.close
