require 'net/http'

connection = Net::HTTP.new('localhost', 3000)
connection.open_timeout = 1
connection.read_timeout = 3

# set write_timeout to 10 seconds
connection.write_timeout = 10

connection.start

post = Net::HTTP::Post.new('/')
body = (('a' * 1023) + "\n") * 5_000
post.body = body

puts "Sending #{body.bytesize} bytes"
connection.request(post)

# No Ruby 2.6.0, o programa acima é encerrado, gerando Net::WriteTimeoutexceção após 10 segundos (valor definido como write_timeoutatributo).