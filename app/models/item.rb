class Item < ActiveRecord::Base
  attr_accessible :item_type_id, :name, :weight
  belongs_to :item_type
  has_many :item_lines
end
