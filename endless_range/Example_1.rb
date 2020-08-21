# Ruby 2.5.0
x=0
(1..Float::INFINITY).each do |n|
  p x+=1
end
# ou
1.step.each do |n|
  p x+=1
end

# Ruby 2.6.0

(0..).each do |n|
  p x+=1
end
# ou
(0..nil).each do |n|
  p x+=1
end