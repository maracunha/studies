#https://launchschool.com/books/ruby/read/loops_iterators

=begin 
def escada_tem andares
  
  desenho = ""
  espaco = ""

  for i in 0...andares do 
    print " "
      for i in 0..andares do
      puts "#"
      end
  end
end

puts "Quantos andares terá para o Mário subir?"
valor = gets.to_i

puts "Sua escada terá #{valor} andares!"
escada_tem valor
=end

=begin
Quero isso.
#
##
###
####
#####  


loop do
  puts numeros[x]
  x += 1
  break if x > numeros.length
end


=end

puts "Quantos andares terá para o Mário subir?"
valor = gets.to_i

puts "Sua escada terá #{valor} andares!"


x = 0
while x <= valor
  
  for i in 0..x do
    print "#"
  end

  puts 
  x += 1
end

puts "-----------------"


x = 0
while x <= valor
  y = x
  loop do
    print "#"
    y += 1
    break if y > valor
  end

  puts 
  x += 1
end

=begin
outputs:
######
##### 
####  
###   
##    
#     
=end

puts "-----------------"


x = 0
while x <= valor
  y = x
  loop do
    print " "
    y += 1
    break if y > valor
  end

  puts "#"
  x += 1
end
=begin
outputs:
      #
     #
    #
   #
  #
 #
=end


puts "-----------------"

x = 0
y = valor
while x <= valor
  
  for i in 0...y do
    print " "
  end
  
  for i in 0...x do
    print "#"
  end

  print " "
  
  for i in 0...x do
    print "#"
  end

  puts
  y -= 1
  x += 1
end

=begin
outputs:
    # #
   ## ##
  ### ###
 #### ####
##### #####

=end