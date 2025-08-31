use std::net::TcpStream;
use std::io::Read;

fn main() {
    const HOST: &str = "localhost";
    // const HOST: &str = "djxmmx.net";
    const PORT: i32 = 17;
    const BUFSIZE: usize = 512;

    let addr = format!("{}:{}", HOST, PORT);
    match TcpStream::connect(addr) {
        Err(e) => println!("{}", e),
        Ok(mut stream) => {
            let mut line = [0; BUFSIZE];
            if let Ok(n) = stream.read(&mut line) {
                let str = std::str::from_utf8(&line[..n]).unwrap();
                println!("{}", str);
            }
        }
    }
}
