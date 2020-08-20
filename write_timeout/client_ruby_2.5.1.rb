require 'net/http'

connection = Net::HTTP.new('localhost', 3000)
connection.open_timeout = 1
connection.read_timeout = 3
connection.start

post = Net::HTTP::Post.new('/')
body = (('a' * 1023) + "\n") * 5_000
post.body = body

puts "Sending #{body.bytesize} bytes"
connection.request(post)

# Os processos do Ruby 2.5.1 solicitam infinitamente, a menos que o programa acima seja interrompido.