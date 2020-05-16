class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string      :name,        null:false,  index:true
      t.integer     :price,       null:false
      t.integer     :condition,   null:false
      t.string      :explanation, null:false
      t.integer     :view_count,  null:false
      t.integer     :buyer
      t.datetime    :bought_at
      t.references  :user,                      foreign_key: true
      t.references  :category,    null:false,   foreign_key: true
      t.timestamps
    end
  end
end
