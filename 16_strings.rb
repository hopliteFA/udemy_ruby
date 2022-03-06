#homework assignment
#get first and last names from the user, then 
#give the full name, then reverse it, and then
#give the length without the space.

#get first name
puts "What is your first name?"
first_name = gets.chomp 

#get last name
puts "What is your last name?"
last_name = gets.chomp 

full_name = first_name + " " + last_name
puts "Your full name is #{full_name}."

puts "Your reversed name is #{full_name.reverse}."

puts "Your name has #{full_name.length.to_i - 1} letters in it."
