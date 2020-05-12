class Item < ApplicationRecord

  belongs_to :user
  has_many   :tags, through: :item, dependent: :destroy
  has_many   :item_tags
  belongs_to :category
  has_many   :comments,             dependent: :destroy
  has_many   :pictures,             dependent: :destroy
  has_many   :likes,                dependent: :destroy

  validates :name, :price, :condition, :explanation,
            presence: true

  validates :name,        presence: { message: "商品名を入力してください" }
  validates :price,       presence: { message: "金額を入力してください" }
  validates :condition,   presence: { message: "状態を選択してください" }
  validates :explanation, presence: { message: "商品内容を入力してください" }

end
