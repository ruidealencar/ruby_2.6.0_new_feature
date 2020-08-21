# Antes do Ruby 2.6, String#split retornava um array de strings divididas.

def is_fruit?(value)
  %w(banana manga melancia uva).include?(value)
end

input_str = "manga, batata, banana, alface, uva"

splitted_values = input_str.split(", ")
p splitted_values

fruits = splitted_values.select { |value| is_fruit?(value) }
p fruits

# dividido com um bloco
arr = []
input_str.split(", ") { |value| arr << value if is_fruit?(value) }
p arr