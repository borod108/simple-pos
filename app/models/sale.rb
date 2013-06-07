class Sale < ActiveRecord::Base
  attr_accessible :client, :item_line_id, :price, :received, :order_id,:sales_person_id, :amount
  belongs_to :sales_person, class_name: User
  belongs_to :item_line
  belongs_to :order



  validates :received,:presence=> true
  validates :price,:presence=> true
  validates :item_line_id, :presence=> true
  validates :order_id, :presence=> true
  validates :item_line, :presence=> true
end
