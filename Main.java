import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.Socket;

public class Main {
    static final String HOST = "localhost";
    // static final String HOST = "djxmmx.net";
    static final int PORT = 17;
    static final int BUFSIZE = 512;

    public static void main(String[] args) throws IOException {
        Socket socket = null;
        InputStream stream = null;
        try {
            InetAddress serverIp = InetAddress.getByName(HOST);
            socket = new Socket(serverIp, PORT);
            stream = socket.getInputStream();
            byte[] buffer = new byte[BUFSIZE];
            stream.read(buffer);
            System.out.println(new String(buffer));
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            socket.close();
            stream.close();
        }
    }
}
