# Let's play! You have to return which player won! In case of a draw return Draw!.
#
# Examples:
#
# rps('scissors','paper') // Player 1 won!
# rps('scissors','rock') // Player 2 won!
# rps('paper','paper') // Draw!

# Scissors > Paper || Paper > Rock || Rock > Scissors
#
# if p1 || p2 equals Scissors then ...
# if p1 || p2 equals Paper then ...
# if p1 || p2 equals Rock then ..
# if p1 || p2 equals the same then ...

def rps(p1, p2)
  if (p1 == "scissors" && p2 == "paper")
    "Player 1 won!"
  elsif (p2 == "scissors" && p1 == "paper")
    "Player 2 won!"
  elsif (p1 == "paper" && p2 == "rock")
    "Player 1 won!"
  elsif (p2 == "paper" && p1 == "rock")
    "Player 2 won!"
  elsif (p1 == "rock" && p2 == "scissors")
    "Player 1 won!"
  elsif (p2 == "rock" && p1 == "scissors")
    "Player 2 won!"
  elsif p1 == p2
   "Draw!"
  end
end

### OR

def rps(p1, p2)
  return 'Draw!' if p1 == p2

  result = win_matrix[p1.to_sym][p2.to_sym]

  "Player #{result} won!"
end

def win_matrix
  {
    rock:     { paper: 2, scissors: 1 },
    paper:    { scissors: 2, rock: 1 },
    scissors: { rock: 2, paper: 1 }
  }
end
