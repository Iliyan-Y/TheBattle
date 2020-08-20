class Game

  attr_reader :players, :turn_to_attack

  def initialize(player1, player2)
    @players = [player1,player2]
    @turn_to_attack = player1
  end

  def attack(target)
    target.get_damage
    turn_switcher
  end

  def player1
    @players[0] 
  end

  def player2
    @players[1]
  end

  def turn_switcher
     if @turn_to_attack == player1
        @turn_to_attack = player2
     else
        @turn_to_attack = player2
     end
  end
  
end