class Player

  def initialize(id, name, life_count, turn)
    @id = id
    @name = name
    @life_count = life_count
    @turn = turn
  end

  attr_accessor :id, :name, :life_count, :turn

end

def setPlayers
  @x = Player.new(1, "Player 1", 3, true)
  @y = Player.new(2, "Player 2", 3, false)
end

def deductLife(id)
  if (@x.id == id)
    @x.life_count -= 1
  else
    @y.life_count -= 1
  end
end
