require 'rails_helper'

# RSpec.describe Song do
#   describe 'validations' do
#     it {should validate_presence_of :name}
#   end

  RSpec.describe Song, type: :model do
    describe "relationships" do
      it {should belong_to :artist}
    end



  describe 'relationships' do
    it {should belong_to :artist}
  end

  describe 'class methods' do
    it '.songcount' do
      prince = Artist.create!(name: 'Prince')
      talking_heads = Artist.create!(name:'Talking Heads')
      rasperry_baret = prince.songs.create!(title: 'Rasberry Beret', length: 234, playcount: 34)
      wild_life = talking_heads.songs.create!(title:'Wild Wild Life', length: 456, playcount: 45)

      expect(Song.songcount).to eq(2)
    end
  end
end
