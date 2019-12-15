# code your #valid_move? method here


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

# code your #position_taken? method here! 

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 

display_board(board)  

puts "Please enter your first move (1-9):"

user_input = gets.strip

def input_to_index(user_input)
  user_input.to_i - 1 
end 

index = input_to_index(user_input)

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil 
else 
  puts "That position is already taken. Please choose another spot on the baord."
  end 
end 

position_taken?(board, index)

# puts !position_taken?(board, index)

# 2019.12.14 - Julian - The return Boolean value of the valid_move? method should be true. 
# So, something other than FALSE, false, and nil. 
# Hmm.. after the program runs the position_taken? method, the return Boolean value is false.. which means that it does not puts the string under else.. and so, continues on to the next line of code, which is the valid_move? method, which should return true in order to continue to the following instructions.  

def valid_move?(board, index)
  if index.between?(0,8) || !position_taken?(board, index)
else 
  puts "That is not a valid move. Please select another box on the board."
end
end 

puts "Player two, please make your move.." 

!valid_move?(board, index)

