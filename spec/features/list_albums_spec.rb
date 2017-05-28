require 'rails_helper'

RSpec.describe Album, type: :model do
  describe "validations" do
    let!(:artist) {create :artist, name:"Rolling Stones"}
    let!(:album) {create :album, album_name: "Rolling Stones album", released: "1997", album_image_url: "https://goo.gl/M0m3dQ", artist: artist}

    it "is invalid without a name" do
      album = Album.new(album_name:"")
      album.valid?
      expect(album.errors).to have_key(:album_name)
    end
  end

  describe "association with artist" do
    let!(:artist) {create :artist}
    let!(:album) {create :album, artist: artist}
    it "belongs to an artist" do
      expect(album.artist).to eq(artist)
    end
    it "can be deleted from the artists' albums" do
      expect{album.destroy}.to change(artist.albums, :count).by(-1)
    end
  end
end
