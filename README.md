## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| password           | string | null: false |
| name               | string | null: false |
| profile            | string | null: false |
| occupation         | text   | null: false |
| position           | text   | null: false |

### Association

- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :messages

## comments テーブル

| Column    | Type       | Options                |
| ------    | ------     | ---------------------- |
| text      | text       | null: false            |
| user      | references | null: false foreign_key|
| prototype | references | null: false foreign_key|

### Association

- has_many :room_users
- has_many :users, through: :room_users
- has_many :messages

## prototypes テーブル

| Column    | Type        | Options                        |
| ------    | ----------  | ------------------------------ |
| title     | string      | null: false, foreign_key: true |
| catch_copy| references  | null: false, foreign_key: true |
| concept   | text        | null: false,                   |
| user      | user        | null: false,                   |
### Association

- belongs_to :room
- belongs_to :user