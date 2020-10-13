# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

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


## recipes テーブル

| Column              | Type      | Options     |
|  -----------------  | --------- | ----------- |
| name                | string    | null: false |
| outline             | text      | 
| category_id         | integer   | null: false |
| foodstuff           | text      | null: false |
| cook                | text      | null: false |
| user_id             | references| null: false,foreign_key: true |


### Association
- belongs_to :user

