class TicTacToe 
  
  def initialize(board=nil)
    @board= board || Array.new(9, " ")
  end 
  
 WIN_COMBINATIONS = [
    [0,1,2], # Top row
    [3,4,5],  # Middle row
    [6,7,8],  # Bottom row
    [0,3,6],  # Left col
    [1,4,7],  # Middle col
    [2,5,8],  # Right col
    [0,4,8],  # Diagnol 1
    [2,4,6]  # Diagnol 2
  ]
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(user_input)
    user_input.to_i - 1
  end 
    
  def move(position, symbol)
    @board[position]= symbol
  end
  
  def position_taken?(index)
   @board[index] == "X" || @board[index] == "O"
  end 
  
  def valid_move?(index)
     index.between?(0,8) && !position_taken?(index)
  end
  
  
end 

