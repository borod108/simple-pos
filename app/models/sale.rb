class Sale < ActiveRecord::Base
  attr_accessible :client, :item_line_id, :price, :received, :order_id,:sales_person_id
  belongs_to :sales_person, class_name: User
  belongs_to :item_line
  belongs_to :order



  validate :received,:presence
  validate :price,:presence
  validate :date,:presence
  validate :item_line_id, :presence
  validate :order_id, :presence
end
