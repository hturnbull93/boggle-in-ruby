def roll_dice
  dice = [
    ["R", "I", "F", "O", "B", "X"],
    ["I", "F", "E", "H", "E", "Y"],
    ["D", "E", "N", "O", "W", "S"],
    ["U", "T", "O", "K", "N", "D"],
    ["H", "M", "S", "R", "A", "O"],
    ["L", "U", "P", "E", "T", "S"],
    ["A", "C", "I", "T", "O", "A"],
    ["Y", "L", "G", "K", "U", "E"],
    ["Qu", "B", "M", "J", "O", "A"],
    ["E", "H", "I", "S", "P", "N"],
    ["V", "E", "T", "I", "G", "N"],
    ["B", "A", "L", "I", "Y", "T"],
    ["E", "Z", "A", "V", "N", "D"],
    ["R", "A", "L", "E", "S", "C"],
    ["U", "W", "I", "L", "R", "G"],
    ["P", "A", "C", "E", "M", "D"],
  ]
  dice.shuffle.map do |die|
    die.sample
  end
end

def display_grid(cells)

  puts "+-----+-----+-----+-----+"
  puts "|  #{cells[0]}  |  #{cells[1]}  |  #{cells[2]}  |  #{cells[3]}  |"
  puts "+-----+-----+-----+-----+"
  puts "|  #{cells[4]}  |  #{cells[5]}  |  #{cells[6]}  |  #{cells[7]}  |"
  puts "+-----+-----+-----+-----+"
  puts "|  #{cells[8]}  |  #{cells[9]}  |  #{cells[10]}  |  #{cells[11]}  |"
  puts "+-----+-----+-----+-----+"
  puts "|  #{cells[12]}  |  #{cells[13]}  |  #{cells[14]}  |  #{cells[15]}  |"
  puts "+-----+-----+-----+-----+"

end