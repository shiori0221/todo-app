## tasksテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | string     | null: false                    |
| memo    | text       |                                |
| limit   | datetime   |                                |
| list_id | integer    | null: false                    |
| user    | references | null: false, foreign_key: true |

### Association

- belongs_to :user


## usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :tasks