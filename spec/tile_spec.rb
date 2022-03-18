require_relative '../lib/tile'

describe 'A tile' do

  describe 'attributes' do

    it 'has a value' do
      Tile.new(1).value
    end

  end

  describe '#up?' do
    it 'is up by default' do
      expect(Tile.new(1).up?).to be(true)
    end
  end

  describe '#flip' do
    it 'is up after being flipped' do
      tile = Tile.new(1)
      tile.flip
      expect(tile.up?).to be(false)
    end

    it 'stays down despite being flipped more than once' do
      tile = Tile.new(1)
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
        skip
      end
    end

    context 'when down' do
      it 'shows a space within brackets' do
        skip
      end
    end
  end

end
