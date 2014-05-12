# U2.W6: CREATE A BOGGLEBOARD CLASS

# PAIR: SCOTT JASON AND KENDALL CAREY

#------------------------------------#

# PSEUDOCODE 

# INPUT: A method(s) passed to an object
# OUTPUT: A boolean based on a statements reflection
# of the code its testing.

		# STEP 1 --> Create a class called BoggleBoard

		# STEP 2 --> Define methods in BoggleBoard class
		# such that the expected values are returned
		# and that interaction to these objects' methods 
		# are acessible via a new instance of this class.

		# STEP 3 --> The objects that contain these methods
		# are boggle_board (old one) and dice_grid (new one).
		# These are two-dimensional arrays because they are 
		# nested once (ie two array brackets). This causes
		# the whole array (the nested one) to accesible with
		# bracket at index 0. So, index 0 is not an element
		# of an array, it's an array. So, to access individual
		# elements in a nested array.

		# dice_grid is the argument (data) passed in as for new
		# instances of BoggleBoard class.


		# SNYTAX REFERENCE FOR NETSTED ARRAYS =>

		#   ACCESSING AND ITERATING OVER NESTED ARRAYS:

		#       a = [[1, 2], [3, 4]]
		#   a.each do |sub|
		#     sub.each do |int|
		#       puts int
		#     end
		#   end



# PSEUDOCODE REFRESHER =>

# 1. CONVERT DRIVER TEST CODE TO CREATE NEW BOARD OBJECT

# 2. BOARD OBJECT HAS A PARAMETER FOR THE ORIGINAL 2D ARRAY

# 3. THIS 2D ARRAY IS NOW GOING TO BE CALLED dice_grid

# 4. THIS IS BECAUSE boggle_board IS NOW ITS OWN OBJECT

# 5. HOW DOES boggle_board OBJECT HOLD THE dice_grid?

# ---> SEE ANSWERS IN REFLECTION AT BOTTOM --->

# NOTE: WHAT EXACTLY DOES ITS 'OWN' OBJECT MEAN IN INSTRUCTIONS?

#------------------------------------------------#

# INITIAL SOLUTION

class BoggleBoard
  def initialize(dice_grid)
    @dice_grid = dice_grid
  end

  def create_word(*coords)
    coords.map { |coord| @dice_grid[coord.first][coord.last]}.join("")
  end

  def get_row(row)
    @dice_grid[row]
  end

  def get_col(col)
    @dice_grid.transpose[col] # best.method.ever.worst.ruby-doc.definition.ever
	end
end

#------------------------------------------------#


# dice_grid, our object that stores a 2D nested array:

dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]


#------------------------------------------------#


# create an object called boggle_board, it's an instance of the BoggleBoard
# class with dice_grid as its argument. This means the boggle_board
# object is comprised of the dice_grid data structure (a nested array).
# This object can be manipulated by the behaviors in the BoggleBoard class.

boggle_board = BoggleBoard.new(dice_grid)


#------------------------------------------------#

# DRIVER TESTS GO BELOW THIS LINE -->

p boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock" # expect return true
p boggle_board.create_word([1,2], [0,0], [2,1]) == "dbc" # expect return true
p boggle_board.create_word([2,1], [0,1], [0,2], [2,1], [3,2]) == "crack" # expect return true
p boggle_board.get_row(2) == ["e", "c", "l", "r"] # expect return true
p boggle_board.get_col(2) == ["a", "d", "l", "k"] # expect return true

# ---> ALL TESTS PASS, RETURN TRUE 

#------------------------------------------------#


# REFLECTION 

# Its funny how I worked with Scott on this challenge and we went over every single
# bit of this challenge and it tooK a while to complete but the next day I worked on
# it with Tim and because I had worked on it with Scott and completely understood it
# I was able to really help Tim without giving away the secrets and we went through 
# the exercise in no time at all. 
