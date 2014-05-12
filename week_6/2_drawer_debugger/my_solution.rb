# U2.W6: Drawer Debugger


# I worked on this challenge Antonio and Kendall.


# 2. Original Code

class Drawer

	attr_reader :contents

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end

	def add_item(item)
		@contents << item
	end

	def remove_item(item = @contents.pop) #pop deletes the element, but leaves the space
		@contents.delete(item)
	end

	def dump  # this method only returns the following statement
		puts "Your drawer is empty."
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
end


class Silverware
	attr_reader :type

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware
		puts "#{type} is already clean"
	end

	def clean
		puts "#{type} is getting clean"
	end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 

silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")



silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?

new_fork = Silverware.new("fork")
silverware_drawer.add_item(new_fork)
fork = silverware_drawer.remove_item(new_fork)
# new_fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat

#BONUS SECTION
fork.clean

# DRIVER TESTS GO BELOW THIS LINE

salad_fork = Silverware.new("salad fork")
silverware_drawer.add_item(salad_fork)
silverware_drawer.view_contents
salad_fork.eat


fork.clean == "fork is getting clean"

#Reflection
# This exercise was quite fun and pretty quick, I even had time to complete
# the bonus challenge. I only got a little stuck on the fork.eat problem but 
# Antonio quickly figured it out. I liked this challenge a lot.



