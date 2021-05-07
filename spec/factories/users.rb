FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {Faker::Internet.email}
    password              {Faker::Internet.password(min_length:7, max_length: 10)}
    password_confirmation {'password1'}
    family_name           {'ぜんかく'}
    first_name            {'ぜんかく'}
    family_name_kana      {'ゼンカク'}
    first_name_kana       {'ゼンカク'}
    birth_day             {Faker::Date.backward}
  end
end