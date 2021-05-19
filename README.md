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
| birth_day          | date   | null: false  |

## Association
- has_many :items
- has_many :buyers



## itemsテーブル

| Column           |  Type      | Options           |
| ---------------- | ---------  | ----------------- |
| name             | string     | null: false       |
| text             | text       | null: false       |
| category_id      | integer    | null: false       |
| status_id        | integer    | null: false       |
| postage_id       | integer    | null: false       |
| region_id        | integer    | null: false       |
| shopping_date_id | integer    | null: false       |
| price            | integer    | null: false       |
| user             | references | foreign_key: true |
## Association
- belongs_to :user
- has_one :purchase_history





## buyersテーブル

| Column         |  Type     | Options           |
| -------------- | --------- | ----------------- |
| post_code      | string    | null: false       |
| region_id      | integer   | null: false       |
| city           | string    | null: false       |
| address        | string    | null: false       |
| building_name  | string    |                   |
| phone_number   | string    | null: false       |
| purchase_history_id | references | foreign_key: true 

## Association
- belongs_to :purchase_history




## purchase_history テーブル

| Column         |  Type      | Options           |
| -------------- | ---------- | ----------------- |
| user           | references | foreign_key: true |
| item           | references | foreign_key: true |

## Association
- belongs_to :user
- belongs_to :item
- has_one    :buyer