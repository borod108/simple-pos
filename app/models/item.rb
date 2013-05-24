class Item < ActiveRecord::Base
  attr_accessible :item_type_id, :name, :weight
end
