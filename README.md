# README

## usersテーブル

| Column           |  Type  | Options     |
| ---------------- | ------ | ----------- |
| nickname         | string | nill: false |
| email            | string | nill: false |
| password         | string | nill: false |
| family_name      | string | nill: false |
| first_name       | string | nill: false |
| family_name_kana | string | nill: false |
| first_name_kana  | string | nill: false |
| year             | date   | nill: false |
| month            | date   | nill: false |
| day              | date   | nill: false |

## Association
- has-many :items
  belongs_to :buyers
- belongs_to :credit_card



## itemsテーブル

| Column        |  Type     | Options     |
| ------------- | --------- | ----------- |
| name          | string    | nill: false |
| text          | text      | nill: false |
| category      | string    | nill: false |
| status        | string    | nill: false |
| postage       | string    | nill: false |
| region        | string    | nill: false |
| shopping_date | string    | nill: false |
| price         | integer   | nill: false |


## Association
- belongs_to :users
- belongs_to :credit_card




## buyersテーブル

| Column        |  Type     | Options           |
| ------------- | --------- | ----------------- |
| user_id       | reference | foreign_key: true |
| credit_card   | reference | foreign_key: true |
| post_cord     | string    | nill: false       |
| prefectures   | string    | nill: false       |
| city          | string    | nill: false       |
| address       | string    | nill: false       |
| building_name | string    |                   |
| phone_number  | string    | nill: false       |

## Association
- belongs_to :users
- belongs_to :credit_card



## credit_cardテーブル

| Column        |  Type     | Options           |
| ------------- | --------- | ----------------- |
| user_id       | reference | foreign_key: true |
| customer_id   | string    | nill: false       |
| card_id       | string    | nill: false       |