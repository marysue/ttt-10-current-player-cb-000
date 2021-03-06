def turn_count(board)
  #board = ["O", " ", " ", " ", "X", " ", " ", " ", "X"]
  #turn_count = 3
  i = 0
  board.each do | entry |
    puts "board[#{i}] = #{entry}"
    i += 1
  end
  puts "count = #{i}"

  count = 0
  board.each do| entry |
    if entry == "X" || entry == "O"
      puts "board = #{entry}"
      count += 1
    else
      puts "board = empty #{entry}"
   end
 end
 puts "counted:  #{count}"
 return count
end

def current_player(board)
  # board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]
  #  returns current player = 'X' for first move
  #  returns current player = 'Y' for second move

  count = turn_count(board)
  if count % 2 == 0
    puts "count = #{count}, player = 'X'"
    player = 'X'
  else
    puts "count = #{count}, player = 'O'"
    player = 'O'
  end
  return player
end
