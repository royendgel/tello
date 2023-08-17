local socket = require("socket")
local udp = assert(socket.udp())
local data

local address = "192.168.10.1"
local port = 8889

udp:settimeout(1)


