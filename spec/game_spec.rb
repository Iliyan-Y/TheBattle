require "game"

describe Game do
  subject(:game) { described_class.new }
  let(:player2) { double("Player", hp:100) }

  describe "#Attack" do 
    it "attacks the player and reduces HP by 10" do
      expect(player2).to receive(:get_damage)
      game.attack(player2)
      end
  end
  
end