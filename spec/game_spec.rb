require "game"

describe Game do
  let(:player2) { double("Player", hp:100) }
  subject(:game) { described_class.new("player1",player2 ) }
  

  describe "#players" do
    it "Check if the gaim has more then 1 player" do 
      expect(game.players.length).to be > 1
    end 
  end

  describe "#attack" do 
    it "attacks the player and reduces HP by 10" do
      expect(player2).to receive(:get_damage)
      game.attack(player2)
      end
  end

  describe "#turn_switcher" do 
    it "gives the role of attacker to the next player" do
       game.turn_switcher
       expect(game.turn_to_attack).to eq player2
    end

    it "gives the role of defend to the next player" do
      game.turn_switcher
      expect(game.turn_to_defend).to eq "player1"
   end
  end
  
end