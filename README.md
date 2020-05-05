
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null:false,unique:true|  
|password|string|null:false|
|email|string|null:false, unique:true|
|first_name|string|null:false|
|last_name|string|null:false|
|reading_first_name|string|null:false|
|reading_last_name|string|null:false|
|nickname|string|null:false ,unique:true|
|introduction|text|null:false|
|birthday|string|null:false|
|dest_first_name|string|null:false|
|dest_last_name|string|null:false|
|reading_dest_first_name|string|null:false|
|reading_dest_last_name|strijng|null:false|
|zip_code|integer|null:false|
|prefecture|string|null:false|
|address1|string|null:false|
|address2|string|null:false|
|building|string|
|telephone|string|
|token_id|string|

### Association
- has_many :comments
- has_many :items, dependent: :destroy
- has_many :likes, dependent: :destroy

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null:false,unique:true|
|name|string|null:false,index:true| 
|price|integer|null:false|
|condition|select|null:false| 
|explanation|text|null:false,index:true| 
|view|integer|integer|null:false|
|user_id|references |null: false, foreign_key:true|
|buyer|user_id|
|bought_at|datetime|null:false|  
|category_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :tags ,through: :item_tags, dependent: :destroy
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
|name|string|null:false、unique :true|


### Asociation
has_many: :items

## items_tagsテーブル
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
- has_many :items , through: :item_tag


