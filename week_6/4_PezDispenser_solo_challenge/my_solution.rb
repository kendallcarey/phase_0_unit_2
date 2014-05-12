# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself.

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
=begin

1. We create a class called PezDispenser
2. Initialize the class and add characteristics
3. add the methods that are described in the user stories
4. create driver code
5. refactor

=end


# 3. Initial Solution

class PezDispenser
		def initialize(*flavors)
			@flavors=flavors
			pez=[]
			@pez=pez
			@pez=@flavors.reduce(:merge)
  			raise ArgumentError, "I think your pez is empty!" if pez==nil
		end
		def pez_count
			return @pez.length
		end
		def get_pez
			puts @pez[0]
			@pez.shift
		end
		def add_pez(*flavor)
			@flavor=flavor
			@pez.push(@flavor.reduce(:merge))
		end
		def see_all_pez
			puts @pez
		end
end


# 4. Refactored Solution

class PezDispenser
		def initialize(*flavors)
			@flavors=flavors
			pez=[]
			@pez=pez
			@pez=@flavors.reduce
  			raise ArgumentError, "I think your pez is empty!" if pez==nil
		end
		def pez_count
			return @pez.length
		end
		def get_pez
			puts @pez[0]
			@pez.shift
		end
		def add_pez(*flavor)
			@flavor=flavor
			@pez << @flavor.reduce
		end
		def see_all_pez
			puts @pez
		end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"
puts super_mario.see_all_pez 



# 5. Reflection 
#I got stuck on the part of putting the flavors in the pez array because the 
#array was inserted as a nested array and not each flavor separately but I found
# .reduce and it worked perfectly twice! Other than that brief problem
# I feel like I breezed through this challenge which is making me feel more
# confident in my abilities :)
