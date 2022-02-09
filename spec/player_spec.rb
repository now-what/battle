require 'player'

describe Player do
  subject(:francesco) { Player.new('Francesco')}

  describe '#name' do
    it "should return the player's name" do
      expect(francesco.name).to eq "Francesco"
    end
  end
end
