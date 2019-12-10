
talk = lambda { |x| puts "Hello #{x}" }
talk_proc = Proc.new { |x| puts "Hello #{x}" }

talk.call "David"
# outputs "Hello David"

talk_proc.call "Amy"
# outputs "Hello Amy"

talk_proc.call
# ouputs Hello

#talk.call
# outputs "Error: wrong number of arguments (given 0, expected 1)"

=begin

A second difference between a lambda and a Proc is how the return statement is handled.
When a lambda encounters a return statement it returns execution to the enclosing method.
However, when a Proc encounters a return statement it jumps out of itself, as well as the enclosing method
  
=end

#outra forma de lambda
talk = ->() {puts "Hi"}

talk.call

####

#With that tiny calc method, we can now easily calculate the execution time of any Ruby code!
def calc(proc)
  start = Time.now
  proc.call
  dur = Time.now - start
end

someProc = Proc.new do
  @num = 0
  1000000.times do
    @num = @num + 1
  end
end

puts calc(someProc)
#this code shows how Ruby pass few miliseconds in 1000000 iteration
puts @num

####