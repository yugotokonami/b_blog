## アプリ名

* B-blog

## 概要

* 読書好きの人が様々なジャンルの本を探したり、自分のお気に入りの本を記事として、気軽に紹介ができるアプリです。
* 他者が投稿した本に関する記事を誰でも閲覧でき、ログインすれば、自分も本に関する記事を投稿することができます。
* 手軽に様々なジャンルの本を知ることができ、多くの本と出会うきっかけを作ることでできるアプリです。

## アプリ機能一覧

* ユーザー登録・ログイン機能(devise)
* 投稿機能
  * 画像の投稿(ActiveStorage)
  * カテゴリー選択(ActiveHash)
* 投稿詳細表示機能
* 編集・削除機能
* マイページ機能
* コメント機能

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