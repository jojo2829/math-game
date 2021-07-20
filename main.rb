load "player.rb"
load "game.rb"
load "questions.rb"

def question
  # Checks on player's turn
  if (@x.turn)
    setCurrentPlayer(@x.id, @x.name)
    @x.turn = false
    @y.turn = true
  elsif (@y.turn)
    setCurrentPlayer(@y.id, @y.name)
    @x.turn = true
    @y.turn = false
  end

  # get question and display
  setQuestion
  puts "#{@current_player}: #{@question}"

  # recieve player input
  print "> "
  @player_answer = gets.chomp

  # compare player answer
  if (@player_answer.to_i == @answer.to_i)
    puts "#{@current_player}: You are right!"
    puts "P1: #{@x.life_count}/3 vs P2: #{@y.life_count}/3 "
    checkLife
  elsif (@player_answer.to_i != @answer.to_i)
    puts "#{@current_player}: Wrong answer!"
    deductLife(@current_player_id)
    puts "P1: #{@x.life_count}/3 vs P2: #{@y.life_count}/3 "
    checkLife
  end
end

start
