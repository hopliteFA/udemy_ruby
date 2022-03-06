#hashes aka dictionaries
sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}

my_hash ={}

my_details = {'name' => 'Russ', 'favcolor' => 'green'}

#accessing values via key, note the []
p my_details['favcolor']
p sample_hash['b']

#methods for hashes
#also introduces (4:30) symbols and relationship to hashes
#symbols are used to store data that doesn't change
another_hash = {a: 1, b: 2, c: 3}
#note that the quote separates the key/value, but 
#when you call, the quote goes first
#exmaples are userid, session, etc.
#use colons instead of quotes
p another_hash[:a]

#get just the keys
p sample_hash.keys

#get just the values
p sample_hash.values

#for iterators and hashes you need to grab both the 
#key and the value 
sample_hash.each do |key, value|
  puts "The class for a key is #{key.class} and the value is #{value.class}"
end

my_details.each do |key, value|
  puts "The class for a key is #{key.class} and the value is #{value.class}"
end

#if you want to add a value to the hash without regard to order
another_hash[:e] = "Russell"
p another_hash

#chaning a value in a hash
another_hash[:c] = "Ruby"
p another_hash

#one liner
my_details.each {|some_key, some_value| puts "The key is #{some_key} and the value is #{some_value}"}

#conditionals with the select method.  Only display string items
p another_hash.select {|k,v| v.is_a?(String)}

#what if you want to remove strings?
#if you nuke the key, the value is nuked too
p another_hash.each {|k,v| another_hash.delete(k) if v.is_a?(String)}
