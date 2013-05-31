class Shipment < ActiveRecord::Base
  attr_accessible :cost, :date, :item_lines_attributes
  has_many :item_lines
  accepts_nested_attributes_for :item_lines
end
