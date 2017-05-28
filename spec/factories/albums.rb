FactoryGirl.define do
  factory :album do
    album_name              { Faker::Lorem.word }
    released                { Faker::Number.number(4) }
    album_image_url       {"https://www.smashingmagazine.com/wp-content/uploads/2015/06/10-dithering-opt.jpg"}
    artist                  { build(:artist) }
  end
end
