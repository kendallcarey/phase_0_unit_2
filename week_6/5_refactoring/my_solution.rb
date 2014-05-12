# U2.W6: Refactoring for Code Readability


# I worked on this challenge with Antonio Perez and Kendall Carey.


# Original Solution

class CreditCard
	def initialize(card_number)
		@card_number = card_number.to_s.chars.map { |x| x.to_i }
		raise ArgumentError, "The number must have 16 digits!" if @card_number.length != 16 

	end

	def check_card
		@card_number.each_index do |x|
			 @card_number[x] *= 2 if x % 2 == 0
 	  end
 	    @card_number = @card_number.join('').to_s.chars.map { |x| x.to_i }

 	  	all = @card_number.inject(:+)
 	  	if all % 10 == 0
 	  		return true
 	  	else 
 	  		return false
 	  	end
 	end
end


# Refactored Solution

class CreditCard
	def initialize(card_number)
		@card_number = card_number.to_s.chars.map { |x| x.to_i }
		raise ArgumentError, "The number must have 16 digits!" if @card_number.length != 16 

	end

	def check_card
	 #@card_number
		@card_number.each_index do |x|
			 @card_number[x] *= 2 if x % 2 == 0
 	  end
 	    @card_number = @card_number.join('').to_s.chars.map { |x| x.to_i }

 	  	all = @card_number.inject(:+)  # gives total
 	  	all % 10 == 0 ? true : false 
 	end
 	
end







# ASSERT

def assert
  raise "Assertion failed!" unless yield
end


puts assert {wrong_card.check_card == false}
puts assert {correct_card.check_card == true}




# DRIVER TESTS GO BELOW THIS LINE
wrong_card = CreditCard.new(1111111111111111)

correct_card = CreditCard.new(4408041234567893)





# Reflection 

# Antonio was fun to work with! He had a bunch of great ideas, for instance the all%10==0 ? true : false
# He found that and it totally works! Super cool, I didn't think my code could be refactored any more
# than it already was and I was wrong! It's kind of fun to be wrong in this case, you learn more.