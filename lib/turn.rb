def turn()
  puts "Please enter 1-9:"
  board = Array.new(9,"")
  input = gets.strip
  input_to_index(input)
  if valid_move?(board,index) do 
    move(board,index)
    display_board(board)
  else
    puts "Invalid input. Where would you like to go?"
    input = gets.strip
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i
  index = index - 1 
end

def move(board, index, value = "X")
  board[index] = value
  display_board(board)
end

def valid_move?(board, index)
  if position_taken?(board, index) == true
    FALSE
  elsif index > (board.length - 1)
    FALSE
  elsif index < 0 
    FALSE 
  else
    true
  end
end

def position_taken?(board, index)
  if board[index] == "X"
    true
  elsif board[index] == "O"
    true
  else
    FALSE
  end
end