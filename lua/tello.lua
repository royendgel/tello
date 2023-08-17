local socket = require("socket")
local udp = assert(socket.udp())
local wait_time = 10
local host, port = "192.168.10.1", 8889

udp:sendto("command", host, port)
socket.sleep(wait_time)
udp:sendto("takeoff", host, port)
socket.sleep(wait_time)
udp:sendto("land", host, port)






