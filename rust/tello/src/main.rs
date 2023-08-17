use std::{thread, time};
use std::net::UdpSocket;

fn main() {
    {
        let ten_sec = time::Duration::from_secs(10);
        let now = time::Instant::now();
        let socket = UdpSocket::bind("0.0.0.0:1121").expect("couldn't bind to address");
        socket.send_to("command".as_bytes(), "192.168.10.1:8889").expect("couldn't send data");
        thread::sleep(ten_sec);
        socket.send_to("takeoff".as_bytes(), "192.168.10.1:8889").expect("couldn't send data");
        thread::sleep(ten_sec);
        socket.send_to("land".as_bytes(), "192.168.10.1:8889").expect("couldn't send data");
    }
}