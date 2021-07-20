class Player

  def initialize(id, name, life_count, turn)
    @id = id
    @name = name
    @life_count = life_count
    @turn = turn
  end

  attr_accessor :id, :name, :life_count, :turn

end

# sets player with 3 lifes
def setPlayers
  @x = Player.new(1, "Player 1", 3, true)
  @y = Player.new(2, "Player 2", 3, false)
end

# deducts player life
def deductLife(id)
  if (@x.id == id)
    @x.life_count -= 1
  else
    @y.life_count -= 1
  end
end
