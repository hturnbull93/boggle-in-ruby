class Boggle
  def initialize
    @grid = @@dice.shuffle.map{ &:sample }.each_slice(4).to_a
  end

  def display
    puts row = '+-----+-----+-----+-----+'
    @grid.each do |line|
      puts "|  #{line.map { |c| c.ljust(2)}.join(' |  ')} |"
      puts row
    end
  end

  @@dice = [
    ['R', 'I', 'F', 'O', 'B', 'X'],
    ['I', 'F', 'E', 'H', 'E', 'Y'],
    ['D', 'E', 'N', 'O', 'W', 'S'],
    ['U', 'T', 'O', 'K', 'N', 'D'],
    ['H', 'M', 'S', 'R', 'A', 'O'],
    ['L', 'U', 'P', 'E', 'T', 'S'],
    ['A', 'C', 'I', 'T', 'O', 'A'],
    ['Y', 'L', 'G', 'K', 'U', 'E'],
    ['Qu', 'B', 'M', 'J', 'O', 'A'],
    ['E', 'H', 'I', 'S', 'P', 'N'],
    ['V', 'E', 'T', 'I', 'G', 'N'],
    ['B', 'A', 'L', 'I', 'Y', 'T'],
    ['E', 'Z', 'A', 'V', 'N', 'D'],
    ['R', 'A', 'L', 'E', 'S', 'C'],
    ['U', 'W', 'I', 'L', 'R', 'G'],
    ['P', 'A', 'C', 'E', 'M', 'D'],
  ]
end

new_game = Boggle.new
new_game.display

# Example grid => [['F', 'U', 'S', 'D'], ['S', 'K', 'E', 'P'], ['R', 'O', 'O', 'V'], ['I', 'Qu', 'U', 'H']