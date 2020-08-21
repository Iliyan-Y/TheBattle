class Player
  DEFAULT_HP = 100
  DEFAULT_DMG = 10

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def get_damage
    @hp -= DEFAULT_DMG
  end
end
