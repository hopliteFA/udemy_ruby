#arrays and working with iterators
#use [] to denote an array (an ordered list of items)
#an array can be anything and it is indexed
#Will use a lot adn ruby has a lot of builtin functionality

#create an array
a = [1, 2, 3, 4, 5, 6, 7]

#different ways of printing the array
puts a
print a
p a

#get the last method
p a.last

#use range (..) to create an array
x = 1..100

puts x
puts x.class
p x.to_a #to an array
p x.to_a.shuffle #to array and shuffle it

#create a new array by copying 
z = x.to_a.shuffle
p z

#create a new array and use ! to overwrite it 
y = (1..10).to_a
p y.reverse
p y
p y.reverse! #used for "destructive" mutation
p y

#create a letter array
w = ("a".."z").to_a
p w
p w.length

#append options

p a
a << 10 ##very cool way to append 
p a
p a.first
p a.last
p a.unshift("Russ")
p a.append("Russ")

#remove duplicates
p a.uniq #not mutating
p a.uniq! #mutating
p a

#test for empty
p a.empty?

#see if item in array
puts a.include?("Poop")

#queue and stack methods
a.push("new item")
p a

a1 = a.pop #LIFO behavior, used to remove an item from an array.  Can also do FIFO, but not used here
p a
p a1

#joins and splits
p a.join #creates a string
p a.join(", ")

a2 = p a.join(", ")
p a2
p a2.split(", ") #creates and array

#create an array from a string.  Pick any string with the %w operator.  Great to make an array of strings quickly
p %w("My name is russ and I like to eat tacos")

#iterators
puts "\niterators\n\n"
#in ruby, the preferred way is to use the .each method
#%w allows you to easily make an array from a string
a3 = %w("My name is russ and I like to eat tacos")
p a3

#for loop iterator.  Very cool.  I never thought about printing the second part of the for statement multiple times
for word in a3
  print word #expected behavior
  print a3 #printing the whole array for every word
end

#ruby's preferred way to iterate is the .each and to do it on one line
a3.each do |food| #"food" is a throw away variable for iteration only, but between bars matters
  print food + " "
end

#now in a single line.  You can replace the do/end with curly braces
a3.each{|food| print food + "--"}

#can also modify on the fly 
a3.each{|food| print food.capitalize + "--"}

#also select (works on boolean)
a4 = (1..100).to_a.shuffle
p a4

p a4.select{|number| number.odd?} #slick!!



