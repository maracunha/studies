# from SoloLearn 
# Ruby course

puts "###########################"
puts "Basic Concepts"
puts "###########################"

puts "hello World!"

puts "hi,"
print "there "
print "Ruby\n"

#To get input from the user in Ruby
puts "Insira um número."
x = gets.to_i
puts x

puts "Qual o seu nome?"
name = gets.chomp
puts "Welcome, #{name}"

Myvar = 12
puts Myvar
#previous definition of Myvar was here
#Myvar = 1
#não pode.
puts
puts "*************"
puts
puts "Maicon has #{x} years old."
puts
puts "*************"
puts

def spacos
    puts
    puts "*************"
    puts
end

spacos

inteiro = 20
puts inteiro

float = 20.23
puts float

string = "Eu"
puts string

spacos

x, y, z = 10, 20, 30

puts x, y, z

spacos

puts "###########################"
puts "Iterator (each, times)"
puts "###########################"

arr = [2,4,6]
sum = 0

arr.each do |x|
  puts x
  sum += x
end
spacos

puts sum

spacos

telas = {svga:800, hd:1366, uhd:3840}

telas.each do |key, value|
  puts "#{key} => #{value}"
end
spacos

10.times do 
  print "1"
end
puts
spacos