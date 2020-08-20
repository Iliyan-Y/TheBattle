class Game

  attr_reader :players

  def initialize(player1, player2)
    @players = [player1,player2]
  end

  def attack(target)
    target.get_damage
  end

  def player1
    @players[0] 
  end

  def player2
    @players[1]
  end
  
end