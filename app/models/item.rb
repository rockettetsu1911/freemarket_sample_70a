class Item < ApplicationRecord

  belongs_to :user
  has_many   :tags, through: :item, dependent: :destroy
  has_many   :item_tags
  belongs_to :category
  has_many   :comments,             dependent: :destroy
  has_many   :pictures,             dependent: :destroy
  has_many   :likes,                dependent: :destroy

end
