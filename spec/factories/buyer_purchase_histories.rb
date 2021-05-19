FactoryBot.define do
  factory :buyer_purchase_history do
    post_code           {'123-4567'}
    region_id           {2}
    city                {'東京'}
    address             {'1-1-1'}
    building_name       {'東京ビル'}
    phone_number        {'09012345678'}
    token               {'tok_abcdefghijk00000000000000000'}
  end
end
