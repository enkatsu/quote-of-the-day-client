import processing.net.*;

String HOST = "localhost";
// String HOST = "djxmmx.net";
int PORT = 17;
int BUFSIZE = 512;
Client client;

void setup() {
  size(600, 150);
  client = new Client(this, HOST, PORT);
}

void draw() {
  background(0);
  if (client.available() > 0) {
    String data = client.readString();
    textSize(15);
    text(data, 0, 15);
    noLoop();
  }
}
