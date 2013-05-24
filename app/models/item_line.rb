class ItemLine < ActiveRecord::Base
  attr_accessible :cost, :cost_with_shipment, :item_id, :quantity, :shipment_id
end
