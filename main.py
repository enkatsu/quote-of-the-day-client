import socket

HOST = 'localhost'
# HOST = 'djxmmx.net'
PORT = 17
BUFSIZE = 512

client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect((HOST, PORT))

data = client.recv(BUFSIZE)
print(data.decode('ASCII'))

client.close()
