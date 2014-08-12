require 'superman'

describe Superman do

  let(:superman) { Superman.new }

  context 'at initialization' do
    it 'is not flying' do
      expect(superman.status).to eq :landed
      # expect(superman.flying?).to be false
    end
  end
  context 'flying and landing' do
    it 'should be able to fly' do
      superman.fly!
      expect(superman.status).to eq :flying
    end

    it 'should be able to land' do
      superman.fly!.land!
      expect(superman.status).to eq :landed
    end
  end

    context 'fighting bad guys' do
      it 'defeats evil superman' do
        evil_superman = Superman.new
        evil_superman.turn_bad!
        expect(evil_superman.good?).to be false
        superman.fight_with(evil_superman)
        expect(evil_superman.good?).to be true
      end
    end
end