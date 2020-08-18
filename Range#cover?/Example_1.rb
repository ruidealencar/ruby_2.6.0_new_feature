p "retorna verdadeiro se o objeto passado como argumento estiver no intervalo."
p (1..10).cover?(5)

p "retorna falso se o objeto passado como argumento não for comparável ou não estiver no intervalo."
p (1..10).cover?(2..11)
p (5..).cover?(4..)
p ("a".."d").cover?("x".."z")

p "Retorna verdadeiro se o argumento Range for igual a ou um subconjunto de Range."
p (1..100).cover?(10..20)