require 'rails_helper'

 describe "Navigating artists" do
   before { login_as user }

   let(:user) { create :user }
   let!(:artist) { create :artist }

   it "allows navigation from the detail page to adding new Artist" do
     visit artists_url(artist)

     click_link "Add new Artist"

     expect(current_path).to eq("/artists/new")
   end

  #  it "allows navigation from the listing page to the detail page" do
  #    visit artists_url
   #
  #    click_link "View"
   #
  #    expect(current_path).to eq(artist_path(artist))
  #  end
 end
