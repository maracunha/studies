def sum (x,y)
  puts (x+y)
end

#sum 2,2
# outputs "4"

def greet(name="")
  if name ==""
    puts "Greetings!"
  else
    puts "Welcome, #{name}!"
  end
end

puts "What's your name?"
#Reminder: gets.chomp is used to take user input and strip the newline at the end of the input.
greet(gets.chomp)

#myMethod has two mandatory parameters and an optional one. Therefore, you can pass two or more arguments to the method.
def myMethod(a, b, *c)
  #some code
  puts (a + b + c)
end

myMethod(10, 10, 10)
