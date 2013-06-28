class Shipment < ActiveRecord::Base
  attr_accessible :cost_in_nis, :date, :item_lines_attributes
  has_many :item_lines
  accepts_nested_attributes_for :item_lines


  def cost_in_nis
    cost.to_d/100 if cost
  end

  def cost_in_nis=(dollars)
    self.cost = dollars.to_d*100 if dollars.present?
  end

  
  def total_weight
    weight = 0
    item_lines.each do |il|
      weight = weight + il.item.weight*il.quantity
    end
    weight
  end
end
