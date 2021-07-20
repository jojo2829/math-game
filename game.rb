class Game

  def initialize(current_player_id, current_player, winner, winner_score)
    @current_player_id = current_player_id
    @current_player = current_player
    @winner = winner
    @winner_score = winner_score
  end

  attr_accessor :current_player_id, :current_player, :winner, :winner_score

end

# Each round sets current player
def setCurrentPlayer(id, name)
  @current_player_id = id
  @current_player = name
end

# Start game, set players with 3 Lifes and start question
def start
  setPlayers
  question
end

# Checks for winner to display in the end
def winnerCheck
  if @x.life_count == 0
    @winner = @y.name
    @winner_score = @y.life_count
  else
    @winner = @x.name
    @winner_score = @x.life_count
  end
end

# Checks players life status each round, if no one is 0, game continues
def checkLife
  if (@x.life_count == 0 || @y.life_count == 0)
    winnerCheck
    puts "#{@winner} wins with score of #{@winner_score}/3"
    puts " ----- GAME OVER ----- "
    puts "Good bye!"
    exit(0)
  else
    puts "----- NEW TURN -----"
    question
  end
end