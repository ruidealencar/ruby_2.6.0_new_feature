require 'socket'

server = TCPServer.new('localhost', 3000)
loop do
  socket = server.accept
end