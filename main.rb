#authenticator project
#Design:  Greet the user, prompt for username and password, 
#then compare them against a list.  If valid, grant access
#and return the object information to the user for the 
#username and the password.  If invalid, let the user try 3
#times before booting them out.

#array of hashes to store the data
users = [
          { username: "mashur", password:"password1" }, 
          { username: "jack", password:"password2" }, 
          { username: "arya", password:"password3" }, 
          { username: "johshow", password:"password4" }, 
          { username: "heisenberg", password:"password5" }, 
          { username: "lizzie", password:"poopface" }, 
        ]

#create a counter to limit tries
counter = 2

while counter >= 0 do
  #decrement the counter to ensure only 3 passes
  counter -= 1

  #greet the user
  puts "Hello, please enter your username:  "
  input_username = gets.chomp
  puts "Password:  "
  input_password = gets.chomp

  users.each{|user_hash| 
    if user_hash[:username] == input_username && user_hash[:password] == input_password
      puts "Access Granted!"
      return
    end
    }
end
