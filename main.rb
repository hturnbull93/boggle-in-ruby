class Boggle
  def initialize
    @grid = @@dice.shuffle.map{ |die| die.sample }.each_slice(4).to_a
  end

  def display
    puts row = '+-----+-----+-----+-----+'
    @grid.each do |line|
      puts "|  #{line.map { |c| c.ljust(2)}.join(' |  ')} |"
      puts row
    end
  end

  @@dice = [
    %w(R I F O B X),
    %w(I F E H E Y),
    %w(D E N O W S),
    %w(U T O K N D),
    %w(H M S R A O),
    %w(L U P E T S),
    %w(A C I T O A),
    %w(Y L G K U E),
    %w(Qu B M J O A),
    %w(E H I S P N),
    %w(V E T I G N),
    %w(B A L I Y T),
    %w(E Z A V N D),
    %w(R A L E S C),
    %w(U W I L R G),
    %w(P A C E M D),
  ]
end

new_game = Boggle.new
new_game.display

# Example grid => [['F', 'U', 'S', 'D'], ['S', 'K', 'E', 'P'], ['R', 'O', 'O', 'V'], ['I', 'Qu', 'U', 'H']



words = []

while true
  input = gets.chomp
  if input == " "
    puts "Do you mean to quit? y/n"
    quit = gets.chomp
    if quit == "y"
      puts words.join(", ")
      break
    end
  else
    words.push(input)
  end
end
