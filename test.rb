def horizontal_tic_tac_toe(board)
  board.each do |row|
    x_count = 0
    o_count = 0

    row.each do |letter|
      if letter == "X"
        x_count += 1
      else
        o_count += 1
    end

    if x_count == 3
      return "X"
    end

    if o_count == 3
      return "O"
    end
  end
end


board = [
  ["X", "X", "O"],
  ["O", "O", "X"],
  ["X", "O", "X"],
]
