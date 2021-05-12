FactoryBot.define do
  factory :item do
   name             {'test'}
   text             {'test'}
   category_id      {2}
   status_id        {2}
   postage_id       {2}
   region_id        {2}
   shopping_date_id {2}
   price            {100}
   association :user

   after(:build) do |item|
    item.image.attach(io: File.open('public/images/test_image.png'),filename: 'test_image.png')
   end
  end
end
