require_relative '../lib/tile'

describe 'A tile' do

  let(:tile) {Tile.new(1)}

  describe 'attributes' do

    it 'has a value' do
      tile.value
    end
  end

  describe '#up?' do
    it 'is up by default' do
      expect(tile.up?).to be(true)
    end
  end

  describe '#flip' do
    it 'is up after being flipped' do
      tile.flip
      expect(tile.up?).to be(false)
    end

    it 'stays down despite being flipped more than once' do
      tile.flip
      tile.flip
      expect(tile.up?).to be(false)
      tile.flip
      expect(tile.up?).to be(false)
    end

  end

  describe '#to_s string representation' do
    context 'when up' do
      it 'shows its value within brackets' do
        expect(tile.to_s).to eq("[1]")
      end
    end

    context 'when down' do
      it 'shows a space within brackets' do
        tile.flip
        expect(tile.to_s).to eq("[ ]")
      end
    end
  end

end
