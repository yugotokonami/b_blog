## アプリ名

* B-blog

## 概要

* 読書好きの人が様々なジャンルの本を探したり、自分のお気に入りの本を記事として、気軽に紹介ができるアプリです。
* 他者が投稿した本に関する記事を誰でも閲覧でき、ログインすれば、自分も本に関する記事を投稿することができます。
* 手軽に様々なジャンルの本を知ることができ、多くの本と出会うきっかけを作ることでできるアプリです。

## アプリ機能一覧
* トップページ
* ユーザー登録・ログイン機能(devise)
  * [新規投稿](https://gyazo.com/837ebd2b222afc290653c7b0c5f3e58a)
  * [ログイン](https://gyazo.com/86be96d6df2e9f89c0d07d5c068f49ec)
* [投稿機能](https://gyazo.com/4b735ecf9ab08186e8f812c3e73e4f98)
  * 画像の投稿(ActiveStorage)
  * カテゴリー選択(ActiveHash)
* [投稿詳細表示機能](https://gyazo.com/a3c2b635a0abbfb673fbfc322f185d25)
* 編集・削除機能
  * [編集](https://gyazo.com/b24b2e0f8ef27eb484e31b4ed66f602b)
  * [削除](https://gyazo.com/a24e06a04c0fe75dec5b60dd7164b5e0)
* [マイページ機能](https://gyazo.com/a01ea901dcba997dacbb916aaa46a407)
* [コメント機能](https://gyazo.com/fe3394f5b755a049123784bb38826e8e)
* [ログアウト機能](https://gyazo.com/9b87ce39d7ae1eaf7128f83f5402f4af)

## テスト

* RSpec
  * 単体テスト(model)

## 使用技術

### バックエンド

* Ruby 2.6.5
* Ruby on Rails 6.0.4.1

### フロントエンド

* HTML
* CSS(SCSS)
* JavaScript
* jQuery

## データベース

* MySQL
* Seqoel Pro

## インフラ

* AWS
  * S3

## エディタ

* VS code

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