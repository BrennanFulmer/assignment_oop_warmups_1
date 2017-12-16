
def reverse(string)
  if string != string.to_s
   puts "Please enter only a word or words to reverse, #{string} is not valid."
  else
    letters = string.split(//)
    flipped = []
    letters.each do |flip|
      flipped.unshift(letters[letters.index(flip)])
    end
    puts "The reverse of #{string} is #{flipped.join}."
  end
end

=begin
reverse("fish")
reverse(5.0)
reverse("french horn")
=end

def fibonacci(integer)
  sequence = []
  if integer == 0
    puts "Please enter a number above 0"
  elsif integer == 1
    puts "The first number in the Fibonacci Sequence is [0]"
  else
    first = 0
    second = 1
    counter = 0
    while counter < integer
      sequence << first
      increment = first + second
      first = second
      second = increment
      counter += 1
    end
    puts "The first #{integer.to_s} numbers in the Fibonacci Sequence are #{sequence}"
  end

end

=begin
fibonacci(1)
fibonacci(8)
fibonacci(0)
fibonacci(2)
=end

def my_benchmark(number_of_times)
  start = Time.now
    number_of_times.times { yield }
    endy = Time.now
    diff = endy - start
    puts "The amount of time it took to run the block #{number_of_times} times is #{diff} seconds"
end

=begin
my_benchmark(10000) { puts "hi" }
my_benchmark(100000) { 9 * 9 }
my_benchmark(10000) { 6857 % 8 }
=end

public
def my_each(proc = nil)
  if proc == nil
    self.length.times do |index|
      yield(self[index])
    end
  else
    self.length.times do |index|
      proc.call(self[index])
    end
  end
end

=begin
[1,2,5].my_each{ |item| puts item }

my_proc = Proc.new{|item| puts item**2}
[1,2,5].my_each(my_proc)
=end

def my_map(proc = nil)
  if proc == nil
    mapped1 = []
    self.my_each do |index|
      mapped1 << yield(index)
    end
    puts "#{mapped1}"
  else
    mapped2 = []
    self.my_each do |index|
      mapped2 << proc.call(index)
    end
    puts "#{mapped2}"
  end
end

=begin
[1,2,5].my_map do |item|
  item ** 2
end

procy = Proc.new{|item| item/2}
[10,20,50].my_map(procy)
=end











# spacing