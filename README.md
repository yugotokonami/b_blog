## アプリ名

* B-blog

## 概要

* 読書好きの人が様々なジャンルの本を探したり、自分のお気に入りの本を記事として、気軽に紹介ができるアプリです。
* 他者が投稿した本に関する記事を誰でも閲覧でき、ログインすれば、自分も本に関する記事を投稿することができます。
* 手軽に様々なジャンルの本を知ることができ、多くの本と出会うきっかけを作ることでできるアプリです。

## アプリ機能一覧
* トップページ
    * タイトル画面
    [![Image from Gyazo](https://i.gyazo.com/5d99f3952f1cc49deedcf5a04ca24b4b.gif)](https://gyazo.com/5d99f3952f1cc49deedcf5a04ca24b4b)

  * タイトル画面2
  [![Image from Gyazo](https://i.gyazo.com/6d0ada8bdb02074a6fce70204863da93.gif)](https://gyazo.com/6d0ada8bdb02074a6fce70204863da93)

  * 記事一覧表示画面
  [![Image from Gyazo](https://i.gyazo.com/8bd8288ab9acaa33c0cd5b1734f762b5.gif)](https://gyazo.com/8bd8288ab9acaa33c0cd5b1734f762b5)

* ユーザー登録・ログイン機能(devise)
  * 新規投稿
  [![Image from Gyazo](https://i.gyazo.com/837ebd2b222afc290653c7b0c5f3e58a.gif)](https://gyazo.com/837ebd2b222afc290653c7b0c5f3e58a)

  * ログイン
  [![Image from Gyazo](https://i.gyazo.com/86be96d6df2e9f89c0d07d5c068f49ec.gif)](https://gyazo.com/86be96d6df2e9f89c0d07d5c068f49ec)

* 投稿機能
[![Image from Gyazo](https://i.gyazo.com/4b735ecf9ab08186e8f812c3e73e4f98.gif)](https://gyazo.com/4b735ecf9ab08186e8f812c3e73e4f98)

* 投稿詳細表示機能
[![Image from Gyazo](https://i.gyazo.com/a3c2b635a0abbfb673fbfc322f185d25.gif)](https://gyazo.com/a3c2b635a0abbfb673fbfc322f185d25)

* 編集・削除機能
  * 編集
  [![Image from Gyazo](https://i.gyazo.com/b24b2e0f8ef27eb484e31b4ed66f602b.gif)](https://gyazo.com/b24b2e0f8ef27eb484e31b4ed66f602b)

  * 削除
  [![Image from Gyazo](https://i.gyazo.com/a24e06a04c0fe75dec5b60dd7164b5e0.gif)](https://gyazo.com/a24e06a04c0fe75dec5b60dd7164b5e0)

* マイページ機能
[![Image from Gyazo](https://i.gyazo.com/a01ea901dcba997dacbb916aaa46a407.gif)](https://gyazo.com/a01ea901dcba997dacbb916aaa46a407)

* コメント機能
[![Image from Gyazo](https://i.gyazo.com/fe3394f5b755a049123784bb38826e8e.gif)](https://gyazo.com/fe3394f5b755a049123784bb38826e8e)

* ログアウト機能
[![Image from Gyazo](https://i.gyazo.com/9b87ce39d7ae1eaf7128f83f5402f4af.gif)](https://gyazo.com/9b87ce39d7ae1eaf7128f83f5402f4af)

## テスト

* RSpec
  * 単体テスト(model)
    * ユーザー管理単体テスト
    [![Image from Gyazo](https://i.gyazo.com/68bb60edd0bf3d730c8b191ad6638f27.gif)](https://gyazo.com/68bb60edd0bf3d730c8b191ad6638f27)

    * 投稿単体テスト
    [![Image from Gyazo](https://i.gyazo.com/e44f3cdcb9c81b81080feb4eeb32ca30.gif)](https://gyazo.com/e44f3cdcb9c81b81080feb4eeb32ca30)


## 本番環境

* Basic認証
  * ID: test
  * password: 1222
* [URL](https://b-blog-36388.herokuapp.com/)
* ログイン情報(テスト用)
  * e-mail: aaa@aaa.com
  * password: aaaaaa


## 制作背景（意図）

* 私自身、本が好きで、「もっと手軽に本と出会える場所があったらいいな」と思い、「多くの本を簡単に知ることができるアプリ」を制作しようと思いました。
* ネットで何回も検索して、本を探したり、本屋で歩き回りながら本を探すよりも、B-blogを開けるだけで、様々なジャンルの本を見つけることができ、その本のレビュー（他者が書いた記事）を見て、、本の情報を知ることもできるアプリがあれば便利だと思い、B-Blogを制作しようと思いました。

## 工夫したポイント

* タイトル・記事一覧表示など、とにかくシンプルで見やすい画面にするようにしました。
* 各ボタンにエフェクトやカーソルアクションをつけ、「今ボタンを押したか」「今ボタンにカーソル を合わしているか」などを、よりわかりやすく工夫しました。
* とにかくシンプルに作成しました（実装した機能も、アニメーションも）。

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


## ソース管理

* GitHub,GitHubDesktop

## エディタ

* VS code

## 課題や今後実装したい機能

* 今よりもシンプルで芸術的なデザインをCSSやJavaScriptなどで実装したいです。
* ユーザーがより便利にアプリを使用できるよう、スマホでもB-Blogを使えるようにしたいです。
* SNS(TwitterやInstagramなど)と連携できるような機能を実装したいです。

## DB設計

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