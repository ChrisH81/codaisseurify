require 'rails_helper'

 describe "Viewing an individual event" do
   let(:user) { create :user }
   let(:artist) { create :artist }

   it "shows the artist's details" do
     visit artists_url(artist)

     expect(page).to have_text(artist.name)
    #  expect(page).to have_text(artist.bio)

   end
 end
