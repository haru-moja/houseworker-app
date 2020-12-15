# 家事お手伝いアプリ
***
# このアプリでできること
グループを作成し、グループ内で仕事（家事）を依頼すること、仕事（家事）を引き受けるができる。<br>
グループページのカレンダーに仕事を反映することができる<br>
仕事（家事）の金額を設定することができる<br>
***
# 本番環境
デプロイ先：http://3.139.160.189/<br>
Basic認証: ユーザー名: admax　pass: 1234<br>
テストアカウント：ぽこ太郎　email: poko@poko pass: 111aaa<br>
***
# 制作背景(意図)
昨今、共働き世帯が専業主婦は減り共働き世帯が増加しています。<br>
ですが、一般的に共働き世帯でも家事を行っているのは女性の割合が多いと言われています。<br>
共働きにも関わらず、家事を手伝って欲しいと女性が訴えても、手伝う男性は少ないようです。<br>
そこで、旦那さんに手伝ってもらえないなら、全ての家事に値段を付けて、お仕事にして女性にお小遣いを発生させてしまえば、面白いのではないかと思いこのアプリを作りました。<br>
全ての家事に値段が付けば、もしかしたらお小遣い目当てで家事に参加する男性が増えるかもしれないと期待しています。<br>
そしていつの日か、家事の大切さ大変さを家族みんなで共有し、こんなアプリを使わなくても良くなりますように。
***
# DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)
file:///Users/minamiharuka/Desktop/%E6%9C%80%E7%B5%82%E8%AA%B2%E9%A1%8C%E7%99%BA%E8%A1%A8%E7%94%A8%E7%A2%BA%E5%AE%9A.gif
***
# 工夫したポイント
子供も簡単に使えるようにボタンを大きく、言葉もわかりやすくしました。
***
# 使用技術(開発環境)
***
# 課題や今後実装したい機能
JavaScriptを使用し、動的な楽しいアプリにしたい。
レスポンシブデザインに変更したい。
***
# DB設計
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
