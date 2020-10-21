# README
---
<h1 align=“center”>share Recipe</h1>
-自炊をしている人向けのアプリ
-私の母親は、毎日の献立を考えるのに苦労していました。そして私自身も一人暮らしになり、自炊をする上で料理のレパートリーに悩むことがありました。そこで他の家庭で作られている料理のレシピを共有できるアプリがあれば、献立を考えなくて住むと考えこのアプリを作成しました。
-「今日は何食べよう」、「料理したいけど作り方がわからない」とお困りの方や「こんな料理あるよ」というレシピを共有したい方の<b>「レシピ共有アプリ」</b>です。
- 作成期間 2020/10/13 ~ 2020/10/21
-Elastic IP アドレス:54.95.106.48
<br>
---

## :paperclip: 主な使用言語

---
<a><img src=“https://user-images.githubusercontent.com/39142850/71774533-1ddf1780-2fb4-11ea-8560-753bed352838.png” width=“70px;” /></a> <!-- rubyのロゴ -->
<a><img src=“https://user-images.githubusercontent.com/39142850/71774548-731b2900-2fb4-11ea-99ba-565546c5acb4.png” height=“60px;” /></a> <!-- RubyOnRailsのロゴ -->
<a><img src=“https://cdn.svgporn.com/logos/html-5.svg” height=“60px;” /></a> <!-- htmlのロゴ -->
<a><img src=“https://cdn.svgporn.com/logos/css-3.svg” height=“60px;” /></a> <!-- cssのロゴ -->
<a><img src=“https://syncer.jp/storage/web/brand-logos/static/dst/github-logo-001.png” height=“60px;” /></a> <!-- GitHubのロゴ -->
<a><img src=“https://user-images.githubusercontent.com/39142850/71774786-37825e00-2fb8-11ea-8b90-bd652a58f1ad.png” height=“60px;” /></a> <!-- AWSのロゴ -->
<a><img src=“https://syncer.jp/storage/web/brand-logos/static/dst/jquery-logo-001.png” height=“60px;” /></a><!--JQueryのロゴ-->
---
<br>

## 機能
- ユーザー管理機能
- レシピ投稿機能
- レシピ詳細機能
- ユーザー詳細機能
- 投稿編集削除機能
- お気に入り機能

## 使い方
- 新規会員登録・ログインをすると、レシピの投稿、閲覧ができます。
- 新規会員登録、ログインがお済みでない方も料理の画像や概要を閲覧することが可能です。
- 投稿方法「レシピを投稿する」ボタンから投稿ページに遷移、項目に沿って入力し投稿ボタンをクリック。
- マイページ閲覧、画面右上のユーザーネームをクリック、名前、プロフィール、投稿したレシピ一覧が表示されます。
- レシピ詳細閲覧、レシピ一覧からお気に入りのレシピをクリックすると作り方、材料などの詳細を閲覧できます。
- お気に入り、レシピ一にあるハートマークをクリックする事でお気に入り登録できます。画面右上の「お気に入り一覧」ボタンでお気に入りの一覧を見ることが可能です。
- ホーム画面（レシピ一覧画面）への遷移、画面左上の「Share Recipe」のロゴをクリックするとホーム画面に遷移する事ができます。

## テスト用アカウント
1.マスター用
- email: master_user@gmail.com
- password: master0000
2.閲覧用
- email: test_user@gmail.com
- password: test0000


## 使用技術
1. AWS/本番環境（EC2, S3）
2. MySQL
3. puma
4. JQuery
5. Ruby 2.6.5, Rails 6.0.3.3
6. Mac Catalina(10.15.6)
7. VSCode

# テーブル設計

## users テーブル

| Column           | Type   | Options     |
| -----------------| ------ | ----------- |
| name             | string | null: false |
| profile          | text   | 
| email            | string | null: false |
| password         | string | null: false |

### Association

- has_many :recipes
- has_many :likes, dependent: :destroy


## recipes テーブル

| Column              | Type      | Options     |
|  -----------------  | --------- | ----------- |
| name                | string    | null: false |
| outline             | text      |  
| category_id         | integer   | null: false |
| foodstuff           | text      | null: false |
| cook                | text      | null: false |
| user_id             | references| null: false,foreign_key: true |
| likes_count         | integer   | 


### Association
- belongs_to :user
- has_many :likes, dependent: :destroy


## likes テーブル

| Column      | Type   | Options     |
| ------------| ------ | ----------- |
| user_id     | integer   | 
| recipe_id   | integer   | 


### Association

- has_many :recipes
- has_many :users

---
## 作者
---
[Rikuto Kita]()
mail to: o83.kita.rikuto@gmail.com

