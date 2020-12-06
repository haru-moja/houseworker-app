#家事お手伝いアプリ
## Usersテーブル
| Column | Type | Options |
|---|---|---|
|nickname|string|null: false|
|email|string|null: false|
|encrypted_password|string|null: false|
|last_name|string|null: false|
|first_name|string|null: false|
### Association
- has_many :works
- has_many :completes
- has_many :home_users
- has_many :homes
- has_one :user_content
<br>
<br>
<br>

## Homesテーブル
| Column | Type | Options |
|---|---|---|
|name|string|null: false|
<br>

### Association
- has_many :home_users
- has_many :users
- has_many :works
<br>
<br>
<br>

## Home_usersテーブル
| Column | Type | Options |
|---|---|---|
|home|references|foreign_key: true|
|user|references|foreign_key: true|
### Association
- belongs_to :home
- belongs_to :user
<br>
<br>
<br>

## Worksテーブル
| Column | Type | Options |
|---|---|---|
|title|string|null: false|
|text_content|text|null: false|
|price|integer|null: false|
|need_time|decimel|null: false, precision: 4, scale: 1|
|start_time|datetime|null: false|
|user|references|foreign_key: true|
|home|references|foreign_key: true|
### Association
- belongs_to :home
- belongs_to :user
- has_many_attached :images
- has_one :complete
<br>
<br>
<br>

## Completeテーブル
| Column | Type | Options |
|---|---|---|
|user|references|foreign_key: true|
|work|references|foreign_key: true|
### Association
- belongs_to :user
- belongs_to :work
- has_one :report
- has_many_attached :images
<br>
<br>
<br>

## Reportテーブル
| Column | Type | Options |
|---|---|---|
|text_report|text|null: false|
|feeling_score_id|integer|null: false|
|complete|references|foreign_key: true|
### Association
- belongs_to :complete
- has_many_attached :images
- belongs_to :feeling_score
<br>
<br>
<br>

## User_contentsテーブル
| Column | Type | Options |
|---|---|---|
|text_content|text|null: false|
|user|references|foreign_key: true|
### Association
- belongs_to :user 
- has_one_attached :image
<br>
<br>
<br>
