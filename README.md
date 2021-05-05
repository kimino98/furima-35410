# README

## usersテーブル

| Column             |  Type  | Options      |
| ------------------ | ------ | -----------  | 
| nickname           | string | null: false  |
| email              | string | unique: true |
| encrypted_password | string | null: false  |
| family_name        | string | null: false  |
| first_name         | string | null: false  |
| family_name_kana   | string | null: false  |
| first_name_kana    | string | null: false  |
| birth_da           | date   | null: false  |

## Association
- has_many :items
  belongs_to :buyer
- belongs_to :credit_card



## itemsテーブル

| Column        |  Type     | Options     |
| ------------- | --------- | ----------- |
| name          | string    | null: false |
| text          | text      | null: false |
| category_id   | integer   | null: false |
| status_id     | integer   | null: false |
| postage_id    | integer   | null: false |
| region        | string    | null: false |
| shopping_date | string    | null: false |
| price         | integer   | null: false |
| user_id       | reference |

## Association
- belongs_to :user
- belongs_to :credit_card




## buyersテーブル

| Column        |  Type     | Options           |
| ------------- | --------- | ----------------- |
| user_id       | reference | foreign_key: true |
| post_cord     | string    | null: false       |
| prefectures   | string    | null: false       |
| city          | string    | null: false       |
| address       | string    | null: false       |
| building_name | string    |                   |
| phone_number  | string    | null: false       |

## Association
- belongs_to :user
- belongs_to :credit_card


## categories テーブル

| Column        |  Type     | Options     |
| ------------- | --------- | ----------- |
| name          | string    | null: false |

## Association
- has_many :items



## purchase_history テーブル

| Column         |  Type     | Options           |
| -------------- | --------- | ----------------- |
| user_id        | reference | foreign_key: true |
| items_id       | reference | foreign_key: true |

## Association
- belongs_to :user
- belongs_to :item