# Antes do Ruby 2.6 era possível conseguir isso da seguinte maneira.
Integer("msg") rescue nil

# Ruby 2.6
Float("foo", exception: false)

Integer("foo", exception: false)