require 'io/console'

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



def word_input
  
  words = []
  
  puts "Type in your words, press enter to submit."
  
  still_time = true
  quit = false

  timer = Thread.new {
    time = 5
    while quit == false && time > 0
      sleep 1
      time -=1
    end
    still_time = false
  }
  
  while still_time
    input = gets.chomp
    if input == '!'
      quit = true
      break
    else
      words.push(input)
    end
  end
  
  timer.join

  if
  puts "Time's up! Finish your last word."

  
  puts "Your words are:"
  puts words.join(', ')
  
end

new_game = Boggle.new
new_game.display
word_input




=begin 

def gets_with_quit
  char = ''
  string = ''
  while true do 
    char = STDIN.getch
    if char.ord == 27
      return false
    end
    if char.ord == 13
      puts
      return string
    end
    print char
    string += char
  end
end


def word_input
  words = []

  puts "Type in your words, press enter to submit."


  while true
    input = gets_with_quit

    if input == false
      puts; puts "Are you sure you want to quit? y/n"

      while true
        case STDIN.noecho(&:getch)
        when 'y'
          puts; puts 'Your words are:'
          p words.join(', ')
          return words
        when "n"
          puts "Continue"
          break
        end
      end
  
    else
      words.push(input.split)
    end

  end
end
=end


# Example grid => [['F', 'U', 'S', 'D'], ['S', 'K', 'E', 'P'], ['R', 'O', 'O', 'V'], ['I', 'Qu', 'U', 'H']

# to clear screen => puts "\e[H\e[2J"
