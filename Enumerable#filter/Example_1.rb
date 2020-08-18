
p "Ruby 2.5"
p (1..100).select { |num| num % 5 == 0 }

p "Ruby 2.6"
p (1..100).filter! { |num| num % 5 == 0 }