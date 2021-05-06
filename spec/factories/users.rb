FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@example'}
    password              {'password1'}
    password_confirmation {'password1'}
    family_name           {'ぜんかく'}
    first_name            {'ぜんかく'}
    family_name_kana      {'ゼンカク'}
    first_name_kana       {'ゼンカク'}
    birth_day             {'2020-01-01'}
  end
end