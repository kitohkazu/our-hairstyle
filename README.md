# our-hairstyleとは？
「〜みんなで作るヘアカタログ〜」をコンセプトに

①髪型写真の投稿ができる

②みんなが投稿した写真を見られる

③好みの写真のヘアカタログを作れる


webアプリケーションです。

# 開発背景
みなさんは美容師さんに髪型を伝えても上手く伝わらず、仕上がりに満足できなかった事はありませんか？それならモデルの写真を準備しようとしても、いつもの写真を無くしてしまったり、好みの新しい写真を見つけることに苦労した事はありませんか？
そんな悩みを解消したいという思いから本アプリを開発しました。

# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :posts
- has_many :likes

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|comment|text|
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group
- has_many :likes

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|gender|integer|null: false|
### Association
- belongs_to :post

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :post

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
