# our-hairstyleとは？
「〜みんなで作るヘアカタログ〜」をコンセプトに
- 髪型写真の投稿ができる
- みんなが投稿した写真を見られる
- 好みの写真のヘアカタログを作れる

webアプリケーションです。

# 開発背景
みなさんは美容師さんに髪型を伝えても上手く伝わらず、仕上がりに満足できなかった事はありませんか？それならモデルの写真を準備しようとしても、いつもの写真を無くしてしまったり、好みの新しい写真を見つけることに苦労した事はありませんか？
そんな悩みを解消したいという思いから本アプリを開発しました。

# 実装機能一覧
- ユーザー新規登録、ログイン機能(devise)
- 投稿機能
- 画像プレビュー機能(JavaScript, CarrierWave)
- カテゴリごとの一覧表示
- お気に入り機能

# 使用技術
- 開発環境
  - Ruby/Ruby on Rails/Scss/JavaScript/Jquery/MySQL/Github/Visual Studio Code
- 本番環境
  - AWS(EC2 , S3)/Unicorn/Nginx/MySQL/Capistrano

# 接続先情報
## テストアカウント
- email:  test1@mail.com
- PW: 123456

# DB設計
![ER%E5%9B%B3.png](https://github.com/kitohkazu/our-hairstyle/blob/master/ER%E5%9B%B3.png)
