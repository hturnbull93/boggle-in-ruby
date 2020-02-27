# Boggle in Ruby

Follow the story of the development on [Medium](https://medium.com/@hturnbull93).

## How to play Boggle

1. Roll the dice and lay them into the 4x4 grid.
2. Set a timer for three minutes.
3. Players must find words in the grid and write them down in a list. Valid words are:
     - At least 3 letters long.
     - Defined in the dictionary.
     - Each letter of the word must be chained together in the grid, but no letter can be used more than once in a word.
4. After the three minutes is up, check your words are valid and find out your scores, based on word length:
     - 3 Letters: 1 point
     - 4 Letters: 1 point
     - 5 Letters: 2 points
     - 6 Letters: 3 points
     - 7 Letters: 4 points
     - 8 or More Letters: 11 points

## How to run Boggle in Ruby

1. Clone this repo
1. Run `ruby main.rb` from the command line while in the top-level `boggle-in-ruby` directory.
