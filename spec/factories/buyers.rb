FactoryBot.define do
  factory :buyer do
    post_code           {123-4567}
    region_id           {2}
    city                {'東京'}
    address             {'1-1-1'}
    building_name       {'東京ハイツ'}
    phone_number        {'09012345678'}
    purchase_history_id {'2'}
  end
end
