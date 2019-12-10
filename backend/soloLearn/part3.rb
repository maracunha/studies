require_relative 'renan'

# from SoloLearn 
# Ruby course

puts "###########################"
puts "Collections"
puts "###########################"

def spacos
  puts
  puts "*************"
  puts
end

#set = Renan.new

#set.coisa(nil,nil,20)

numeros = [101, 120, 320]

puts "vamos tentar com FOR"
for i in 0..numeros.length
  puts numeros [i]
end

puts "Agora com o loop do"
x = 0
loop do
  puts numeros[x]
  x += 1
  break if x > numeros.length
end

user_ids = [61543, 20]

print "Os ids que serão apagados são: "
for i in 0..user_ids.length
  print "#{user_ids[i]} "
end

=begin

#The break statement can be used to stop a loop.
for i in 1..5
  break if i > 3
  puts i
end

loop do
  puts x
  x += 1
  break if x > 10
end

=end