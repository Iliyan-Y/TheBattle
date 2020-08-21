class Game

  attr_reader :players, :turn_to_attack, :turn_to_defend

  def initialize(player1, player2)
    @players = [player1,player2]
    @turn_to_attack = player1
    @turn_to_defend = player2
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

  def turn_switcher
     if @turn_to_attack == player1
      @turn_to_attack = player2
      @turn_to_defend = player1
     else
      @turn_to_attack = player1
      @turn_to_defend = player2
     end
  end

  def self.create(player1,player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end
  
end