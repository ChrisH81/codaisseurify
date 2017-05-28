require 'rails_helper'

describe "Current user viewing the list of all artists" do
before { login_as user }

  let(:user) { create :user, email: "current@user.com" }

  let!(:artist1) { create :artist, name: "Artist 1", bio: "Blah blah blah", image_url: "http://igloomusic.co.uk/wp-content/uploads/2014/09/my-band.jpg"}



  it "shows all artists" do
    visit artists_url

    expect(page).to have_text("Artist 1")

  end
end
