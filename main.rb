require 'socket'

HOST = 'djxmmx.net'
PORT = 17
BUFSIZE = 512

socket = TCPSocket.new(HOST, PORT)

p socket.read(BUFSIZE)

socket.close
