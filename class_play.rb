#a sample program to play with classes

class Animal
    # setters and getters for instance variables
    attr_accessor :type, :name, :age, :sound
    
    def deets
      puts "Your #{@type} is named #{@name}, is #{@age} years old, and says #{@sound}"
    end
end
    