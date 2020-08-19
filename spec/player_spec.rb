require 'player'

describe Player do
  let(:player) {Player.new("Player")}
  let(:player2) {Player.new("Player2")}

  describe "#name" do
    it "return the name of the player" do
      expect(player.name.is_a?(String)).to be true
    end
  end

end