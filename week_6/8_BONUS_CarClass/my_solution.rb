# U2.W6: Create a Car Class from User Stories


# I worked on this challenge Tim Howard and Kendall Carey.


# 2. Pseudocode
=begin
1. Create a class called car
2. We are going to create the following attributes:
	A. Model and color of car
3. We are going to create the following methods within the car class:
	A. gps method
	B. Speedometer method
	C. Turn method
	D. speed method
	E. odometer method
	F. stop method
	G. play_by_play method
4. Create driver code
=end


# 3. Initial Solution
class Pizza
	def initialize(*toppings)
		@toppings=toppings
	end
	def slice(slices)
		puts "cut the pizza into #{slices} slices"
	end
end

class Car < Pizza
	def initialize(model, color)
		@holder = []
		@distance_drove = 0
		@model=model
		@color=color
	end
	def gps(miles)
		@miles=miles
		puts "Drive #{miles} miles"
		@distance_drove += @miles
	end
	def speedometer(speed_traveling)
		@speed_traveling=speed_traveling
		puts "I am driving #{speed_traveling} miles per hour"
	end
	def turn(turn)
		if turn=="right"
			puts "I am turning right"
		elsif 
			turn=="left"
			puts "I am turning left"
		else
			puts "that is not a legal turn"
		end
	end
	def d_speed
		@speed_traveling
	end
	def speed(new_speed)
		if new_speed>@speed_traveling
			puts "I am accelerating to #{new_speed} miles per hour"
		elsif new_speed<@speed_traveling
			puts "I am decelerating to #{new_speed} miles per hour"
		else
			puts "I am still traveling #{@speed_traveling} miles per hour"
		end
	end
	def odometer
		puts "You have traveled a total distance of #{@distance_drove} during this trip"
	end
	def stop
		puts "You are following the law and stopping appropriately"
	end
	def play_by_play
	end
	def pizza(*toppings)
		pizza= []
		pizza << toppings
		@holder << pizza
	end
	def delivery
		if @holder==[]
			puts "I'm sorry, I forgot your pizza"
		else
			puts "I brought pizza! #{@holder[0]} pizza to be exact!"
			@holder.shift
		end
	end
end
		  
class Pizza
	def initialize(*toppings)
		@toppings=toppings
	end
	def slice(slices)
		puts "cut the pizza into #{slices} slices"
	end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
jeep=Car.new("jeep", "red")
jeep.gps(0.25)
jeep.stop
jeep.turn("right")
puts "--"
jeep.gps(1.5)
jeep.speedometer(35)
puts "current speed is #{jeep.d_speed} miles per hour"
jeep.speed(15)
jeep.gps(0.25)
jeep.stop
jeep.turn("left")
jeep.gps(1.4)
jeep.speed(35)
jeep.stop
jeep.odometer
jeep.pizza("pepperoni", "pepperoncini")
jeep.pizza("cheese")
jeep.delivery
jeep.delivery
jeep.delivery




# 5. Reflection 
# I feel like I learned a lot from this bonus challenge, perhaps more than some of
# of the other required challenges. I think this shouldn't be a bonus question.
# Perhaps we should have another challenge that works with class inheretance with 
# than one class. This was fun. Actually I enjoyed all the challenges.