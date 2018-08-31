def turn_count(board)
  #board = ["O", " ", " ", " ", "X", " ", " ", " ", "X"]
  #turn_count = 3
  count = 0
  board.each do| entry | 
    if entry == 'X' || entry == 'Y'
      count += 1
   end
 end
 return count
end

def current_player(board)
  # board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]
  #  returns current player = 'X' for first move
  #  returns current player = 'Y' for second move

  count = turn_count(board)
  if count % 2 = 0
    player = 'Y'
  else
    player = 'X'
  end
  return player
end
