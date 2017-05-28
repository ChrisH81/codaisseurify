FactoryGirl.define do
   factory :artist do
     name              { Faker::Lorem.word }
     bio               { Faker::Lorem.sentence(100) }
     image_url         {"https://www.smashingmagazine.com/wp-content/uploads/2015/06/10-dithering-opt.jpg"}
   end
 end
