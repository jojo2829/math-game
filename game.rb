class Game

  def initialize(current_player_id, current_player, winner, winner_score)
    @current_player_id = current_player_id
    @current_player = current_player
    @winner = winner
    @winner_score = winner_score
  end

  attr_accessor :current_player_id, :current_player, :winner, :winner_score

end

def setCurrentPlayer(id, name)
  @current_player_id = id
  @current_player = name
end

def start
  setPlayers

  puts "id: #{@x.id}, #{@x.name}: Life Count: #{@x.life_count}/3 #{@x.turn}"
  puts "id: #{@y.id}, #{@y.name}: Life Count: #{@y.life_count}/3 #{@y.turn}"

  question
end

def winnerCheck
  if @x.life_count == 0
    @winner = @y.name
    @winner_score = @y.life_count
  else
    @winner = @x.name
    @winner_score = @x.life_count
  end
end

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