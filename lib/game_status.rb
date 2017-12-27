# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [2,4,6],
  [0,4,8]
]

def won?(board)

  WIN_COMBINATIONS.detect do |win_combination|
    board[win_combination[0]] == board[win_combination[1]] &&
    board[win_combination[0]] == board[win_combination[2]] &&
    position_taken?(board, win_combination[0])
  end

 # WIN_COMBINATIONS.each do |win_combination|
 #   win_index_1 = win_combination[0]
 #   win_index_2 = win_combination[1]
 #   win_index_3 = win_combination[2]
 #
 #   position_1 = board[win_index_1]
 #   position_2 = board[win_index_2]
 #   position_3 = board[win_index_3]
 #
 #
 #
 #   if position_1 == "X" && position_2 == "X" && position_3 == "X"
 #     return win_combination
 #   elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
 #     return win_combination
 #   elsif position_1 == " " && position_2 == " " && position_3 == " "
 #      false
 #   else
 #     false
 #   end
 # end

end


def full?(board)
  board.none? do |index|
    index == " " || index.nil?
  end

  #test_array = []
  #x = 0
  #while x < board.length
  #  if board[x] == "X" || board[x] == "O"
  #    test_array << board[x]
  #  end
  #  x += 1
  #end
  #if test_array.length == board.length
  #  return true
  #else
  #  false
  #end
end

def draw?(board)
  won?(board) == nil && full?(board) == true

  #if full?(board) == true && won?(board) == false
  #  return true
  #else
  #  false
  #end
end

def over?(board)
  draw?(board) == true || won?(board) != nil


#  if won?(board) == true
#    true
#  elsif full?(board) == true
#    true
#  else
#    false
# end
end


def winner(board)
  if won?(board) != nil
    winner = board[won?(board)[0]]
  else
    nil
  end

#  if won?(board) == false
#    return nil
#  end
end
