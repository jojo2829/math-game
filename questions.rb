class Questions

  def initialize(question, answer, player_answer)
    @question = question
    @answer = answer
    @player_answer = player_answer
  end

  attr_accessor :question, :answer, :player_answer

end

# creates the question
def setQuestion
  num_one = rand(1..20)
  num_two = rand(1..20)
  @answer = num_one + num_two
  @question = "What does #{num_one} plus #{num_two} equal?"
end


