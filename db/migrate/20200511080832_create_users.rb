class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name,       null:false
      t.string :last_name,        null:false
      t.string :first_name_kana,  null:false
      t.string :last_name_kana,   null:false
      t.string :nickname,         null:false
      t.text   :introduction,     null:false
      t.string :birthday,         null:false
      t.string :telephone,        null:false
      t.timestamps
    end
  end
end
