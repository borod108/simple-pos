class ItemLine < ActiveRecord::Base
  attr_accessible :cost, :cost_with_shipment, :item_id, :quantity, :shipment_id
  belongs_to :shipment
  belongs_to :item
end
