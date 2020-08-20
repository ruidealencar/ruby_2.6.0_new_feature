directory = Dir.new('/home/rui/Imagens')
p "Ruby 2.5"
p directory.children
p "###########################################################"
p "###########################################################"
p "###########################################################"

p "Ruby 2.6"
p directory.each_child { |filename| puts "Curently reading: #{filename}"}

# Se não passarmos nenhum bloco para each_child, ele retornará <Dir:/home/rui/Imagens>
p directory.each_child


