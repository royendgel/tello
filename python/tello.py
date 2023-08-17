
import socket
import time

host = ''
port = 90000
locaddr = (host,port)
tello_address = ('192.168.10.1', 8889)
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
def send_command(msg):
    msg = msg.encode(encoding="utf-8")
    sent = sock.sendto(bytes(msg), tello_address)


if __name__ == '__main__':
    send_command("command")
    time.sleep(1)
    send_command("takeoff")
    time.sleep(10)
    send_command("up 100")
    time.sleep(5)
    send_command("flip l")
    time.sleep(5)
    send_command("land")





