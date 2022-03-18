require_relative '../lib/die'

describe 'A die' do

  describe 'attributes' do
    it 'responds to number_of_sides' do
      Die.new.number_of_sides
    end

    it 'responds to face_value' do
      Die.new.face_value
    end
  end

  describe 'number of sides' do
    it 'has six sides by default' do
      expect(Die.new.number_of_sides).to eq(6)
    end

    it 'can be created with a custom number of sides' do
      skip
    end
  end

  describe 'face value' do
    it 'has a face value of 1 by default' do
      skip
    end
  end

  describe '#to_s string representation' do
    it 'TODO' do
      skip
    end
  end

  describe 'rolling' do
    # Don't spend time testing #roll or #random_face_value. Move on.
  end

end
