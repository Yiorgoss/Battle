require 'player.rb'

describe Player do

  subject(:player) {described_class.new("tom")}

  describe '#player' do
    it "Should return the player name" do
      expect(player.player_name).to eq "tom"
    end
  end
end
