class Game

  attr_reader :players, :turn

  def initialize(player1, player2)
    @players = [player1,player2]
    @turn = player1
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
     if @turn == player1
        @turn = player2
     else
        @turn = player2
     end
  end
  
end