# from SoloLearn 
# Ruby course

puts "###########################"
puts "Control Structures"
puts "###########################"

def spacos
  puts
  puts "*************"
  puts
end


puts "Digite um número"
#The value of the input is a string. To convert it to an integer, you can use the gets.to_i method.
numero = gets.to_i

if numero > 10
  puts "Você colocou um númro maior que 10"
else
  puts "Você colocou um número MENOR que 10"
end

spacos

puts "Digite um número de 0 a 10"
num = gets.to_i

if num == 3
  puts "Number is 3"
elsif num == 10
  puts "Number is 10"
elsif num == 7
  puts "Number is 7"
else
  puts "Not found"
end

spacos

#Ruby has three logical operators: and (&&), or (||), and not (!). 
a = 42
b = 8
if a > 7 && b < 11
  puts "Yes"
end
# outputs "Yes"

#The not (!) operator reverses the state of a single operand. 
a = 7
puts !(a>5)
# outputs false
spacos

a = 2
case a
when 1
  puts "One"
when 2
  puts "Two"
when 3
  puts "Three"
end
# outputs "Two"
spacos

age = 18

case age
when 1, 2, 3
  puts "Little baby"
when 4, 5
  puts "Child"
else
  puts "Not a baby"
end

# outputs "Not a baby"

spacos

#Loops are used to execute the same block of code a specified number of times. 
#The while loop executes a block of code while its condition is true.
puts "while loop com print.. o que faz ficar na mesma linha, do 0 ao 10."
x = 0
while x <= 10
  print x
  x += 1
end

spacos

#The until loop is the opposite of a while loop: it will run while its condition is false.
a = 0
until a > 10
  puts "a = #{a}"
  a +=2
end

spacos

#Ranges | These are the ''..'' and ''...'' range operators. 
#The two-dot form creates an inclusive range, while the three-dot form creates a 
#range that excludes the specified high value.

a = (1..7).to_a  #The to_a method is used to convert a range to an array, so we can output it. 
puts a # [1, 2, 3, 4, 5, 6, 7]

b = (79...82).to_a
puts b # [79, 80, 81]

c = ("a".."d").to_a
puts c # [a, b, c, d]

spacos

puts '*** for loop ***'
for i in (1..10)
  puts i
end

#The break statement can be used to stop a loop.
for i in 1..5
  break if i > 3
  puts i
end

# outputs:
# 1
# 2
# 3
spacos
#Similarly, the next statement can be used to skip one iteration of the loop and continue with the next one.
for i in 0..10
  puts i %2
  puts "***"
  next if i %2 == 0
  puts i
end
#This will output only the odd numbers from 0 to 10 because the even numbers will skip the loop iteration
spacos
#Another looping statement in Ruby is the loop do statement.
#It allows code to execute until a break condition is achieved.
#If we do not include a break condition, the loop will run forever.
x = 0
loop do
  puts x
  x += 1
  break if x > 10
end