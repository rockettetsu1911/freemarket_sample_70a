class Category < ApplicationRecord

  has_many :items

  validates :name, presence: true

  validates :name, presence: { message: "商品名を入力してください" }

end
