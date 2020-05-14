
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null:false,unique:true|  
|password|string|null:false|
|email|string|null:false, unique:true|
|first_name|string|null:false|
|last_name|string|null:false|
|first_name_kana|string|null:false|
|last_name_kana|string|null:false|
|nickname|string|null:false ,unique:true|
|introduction|text|null:false|
|birthday|string|null:false|
|telephone|string|null:false|

### Association
- has_one :address ,dependent: :destroy
- has_many :comments
- has_many :items, dependent: :destroy
- has_many :likes, dependent: :destroy
- has_many :cards, dependent: :destroy

## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null:false, unique:true|
|dest_first_name|string|null:false|
|dest_last_name|string|null:false|
|dest_first_name_kana|string|null:false|
|dest_last_name_kana|strijng|null:false|
|zip_code|string|null:false|
|prefecture|integer|null:false|
|city|string|null:false|
|block_number|string|null:false|
|building|string|
|telephone|string|
|user_id|references|null:false, unique:true|

### Asociation
- belongs_to :user



## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null:false,unique:true|
|name|string|null:false,index:true| 
|price|integer|null:false|
|condition|integer|null:false| 
|explanation|text|null:false,index:true| 
|view_count|integer|null:false|
|user_id|references |null: false, foreign_key:true|
|buyer|integer|
|bought_at|datetime|  
|category_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :tags ,through: :item_tags, dependent: :destroy
- has_many :item_tags
- belongs_to :category
- has_many :comments, dependent: :destroy
- has_many :pictures, dependent: :destroy
- has_many :likes, dependent: :destroy

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null:false,unique:true|
|text|text|null:false|
|item_id|references |null: false, foreign_key:true|
|user_id|references |null: false, foreign_key:true|

### Association
- belongs_to :user
- belongs_to :item

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer    |null:false,unique:true|
|user_id|references|null:false, foreign_key:true|
|item_id|references|null:false, foreign_key:true|

### Asociation
- belongs_to :user
- belongs_to :item


## picturesテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null:false, unique:true|   
|image|string|null:false|
|item_id|references|null:false, foreign_key:true|

### Asociation
- belongs_to :item

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null:false,unique:true|       
|name|integer|null:false、unique :true|


### Asociation
has_many: :items

## item_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null:false, unique:true|
|item_id|references|null: false, foreign_key: true|
|tag_id|references|null: false, foreign_key: true|

### Asociation
- belongs_to :item
- belongs_to :tag

## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null:false,unique:true|
|name|string|null:false,unique:true||

### Asociation
- has_many :items , through: :item_tags
- has_many :item_tags


## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null:false,unique:true|
|customer_id|string|null:false|
|card_id|string|null:false|
|user_id|references|null: false, foreign_key: true|

### Asociation
- belongs_to :user
