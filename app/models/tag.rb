class Tag < ApplicationRecord

  has_many :items, through: :item_tag
  has_many :item_tags

  validates :name, presence:true, uniqueness: true

end
