# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| password           | string | null: false |
| first_name         | string | null: false |
| last_name          | string | null: false |
| first_name_kana    | string | null: false |
| last_name_kana     | string | null: false |
| barth_date         | date   | null: false |

### Association

- has_many :items
- has_many :orders


## orders テーブル

| Column | Type   | Options                        |
| ------ | ------ | ------------------------------ |
| user   | string | null: false, foreign_key: true |
| item   | string | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :item
- has_one :address

## items テーブル

| Column           | Type       | Options     |
| -----------------| ---------- | ----------- |
| item_name        | string     | null: false |
| description      | text       | null: false |
| category         | string     | null: false |
| condition        | string     | null: false |
| delivery_charge  | integer    | null: false |
| sender_address   | integer    | null: false |
| shipping_days    | integer    | null: false |
| price            | integer    | null: false |

### Association

- belongs_to :user
- has_one :oder

## addresses テーブル

| Column     | Type       | Options     |
| ---------- | ---------- | ----------- |
| post_code  | integer    | null: false |
| prefecture | string     | null: false |
| city       | string     | null: false |
| address    | integer    | null: false |
| building   | string     |             |
| phone      | integer    | null: false |

### Association

- has_one :order