class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string    :customer_id, null:false
      t.string    :card_id,     null:false
      t.referenes :user,        null:false, foreign_key:true
      t.timestamps
    end
  end
end
