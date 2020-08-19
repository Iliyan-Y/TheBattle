require 'player'
describe Player do
  describe "#get_player_name" do
    it "return the name of the player"do 
      expect(subject.get_player_name.is_a?(String)).to be true
    end
  end
end