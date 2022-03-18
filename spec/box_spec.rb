require_relative '../lib/box'

describe 'A box' do

  let(:box) {Box.new}

  describe 'attributes' do
    it 'has tiles' do
      Box.new.tiles
    end
  end

  describe 'creation' do
    context 'by default' do
      it 'will initialize an array of tiles' do
        
        expect(box.tiles).to be_a(Array)
      end
    end
    context 'with a specific array of tiles' do
      it 'will retain the tiles passed its constructor' do
        fake_tiles = ["FAKE_TILE#1", "FAKE_TILE#2"]
        box = Box.new(fake_tiles)
        expect(box.tiles).to eq(fake_tiles)
      end
    end
  end

  describe '#tiles_remaining?' do
    it 'returns true when at least one tile is up' do
      
      expect(box.tiles_remaining?).to be(true)
    end
    it 'returns false when none of the tiles are up' do
      
      box.tiles.each do |tile|
        tile.flip
      end
      expect(box.tiles_remaining?). to be(false)
    end
  end

  describe '#no_tiles_remaining?' do
    it 'returns true when none of the tiles are up' do
      
      box.tiles.each do |tile|
        tile.flip
      end
      expect(box.no_tiles_remaining?). to be(true)
    end
    it 'returns false when any tile is up' do
      expect(box.no_tiles_remaining?).to be(false)
    end
  end

  describe '#shut?' do
    it 'is true when there are no tiles remaining' do
      
      box.tiles.each do |tile|
        tile.flip
      end
      expect(box.shut?). to be(true)
    end
    it 'is false when there are tiles remaining' do
      expect(box.shut?).to be(false)
    end
  end

  describe '#total_value_of_remaining_tiles' do
    it 'is the sum of the values of all the tiles that are still up' do
      sum = 0
      box.tiles.each do |tile|
        sum += tile.value if tile.up?
      end
      expect(box.total_value_of_remaining_tiles).to eq(sum)
    end
  end

  describe '#flip' do
    it 'flips each tile whose value matches any of the tile values it receives' do
      box.flip([1, 2])
      expect(box.tiles[0].up?).to be(false)
      expect(box.tiles[1].up?).to be(false)
      

    end
    it 'does not flip any tile whose value does not match any of the tile values it receives' do
      box.flip([1, 2])
      expect(box.tiles[2].up?).to be(true)
    end
  end

  describe '#to_s string representation' do
    # Given a box with the tiles that have values 1, 2, 3, 4,
    # And tile 2 is down,
    # The string representation is [1][ ][3][4].
    it "is each tile value in brackets with blanks for tiles that are down" do
      skip
    end
  end
end
