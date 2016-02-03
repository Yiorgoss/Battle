require 'player.rb'

describe Player do

  subject(:player_1) {described_class.new("tom")}
  subject(:player_2) {described_class.new("barry")}

  describe '#player' do
    it "Should return the player name" do
      expect(player_1.name).to eq "tom"
    end
  end
  describe '#attack' do
    it 'should initiate attack' do
      expect(player_1).to respond_to(:attack)
    end
  end

  describe '#receive_damage' do
    it "should reduce player hp by 20" do
      expect{player_1.attack(player_2)}.to change{player_2.hp}.by -20
    end
  end
end
