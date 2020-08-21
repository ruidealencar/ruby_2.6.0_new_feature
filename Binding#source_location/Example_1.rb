# Antes do Ruby 2.6, se quisermos saber o nome do arquivo com a localização e o número da linha do código-fonte, precisaríamos usar Binding#eval
p binding.eval('[__FILE__, __LINE__]')

# Ruby 2.6 adiciona um método mais legível Binding#source_location para obter um resultado semelhante
p binding.source_location