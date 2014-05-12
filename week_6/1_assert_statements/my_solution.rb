# U2.W6: Testing Assert Statements

# I worked on this challenge with Tim Howard and Kendall Carey.


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
#assert { name == "bettysue" }
#assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# We ran the code and nothing was printed to the console when it was true, but 
# when the code was false, it printed the raise statement


# 3. Copy your selected challenge here
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
 	  	if all % 10 == 0
 	  		return true
 	  	else 
 	  		return false
 	  	end
 	end
end

#card = CreditCard.new(4563960122001999)
#puts card.check_card

# 1. DRIVER TESTS GO BELOW THIS LINE

card_1 = CreditCard.new(1111111111111111)
card_1.check_card == false
card_2 = CreditCard.new(4408041234567893)
card_2.check_card == true


# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

card_1 = CreditCard.new(1111111111111111)
assert{card_1.check_card}
card_2 = CreditCard.new(4408041234567893)
assert{card_2.check_card}




# 5. Reflection

# This has been by far the easiest concept taught, very nice and useful.
