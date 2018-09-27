
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index =input_to_index(input)
if valid_move?(board, index)
  move(board, index)
  display_board(board)
else
  puts "That is an invalid move, please enter 1-9:"
  turn(board)
  end
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    return true
  else
    false
  end
end

def position_taken?(board, index)
  board[index] == " " || board[index] == ""
    return true
end

def input_to_index(int)
  int.to_i - 1
end

def move(board, index, player = "X")
  board[index] = player
end
