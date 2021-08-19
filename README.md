## usersテーブル

| Column                | Type                   | Option                   |
| ----------------------| -----------------------| -------------------------|
| email                 | string                 | null: false              |
| password              | string                 | null: false              |
| name                  | string                 | null: false              |
| profile               | text                   |                          |

### Associations

- has_many :articles
- has_many :coments

## articlesテーブル

| Column                | Type                   | Option                         |
| ----------------------| -----------------------| -------------------------------|
| title                 | string                 | null: false                    |
| text                  | text                   | null: false                    |
| category_id           | integer                | null: false                    |
| user                  | references             | null: false, foreign_key: true |

### Associations

- has_many :comments
- bolongs_to :user

## commentsテーブル

| Column                | Type                   | Option                         |
| ----------------------| -----------------------| -------------------------------|
| text                  | text                   | null: false                    |
| user                  | references             | null: false, foreign_key: true |
| article               | references             | null: false, foreign_key: true |

### Associations

- belongs_to :user
- belongs_to :article