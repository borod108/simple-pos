class Sale < ActiveRecord::Base
  attr_accessible :client, :item_line_id, :price_in_nis, :received_in_nis, :order_id,:sales_person_id, :amount
  belongs_to :sales_person, class_name: User
  belongs_to :item_line
  belongs_to :order



  validates :received,:presence=> true
  validates :price,:presence=> true
  validates :item_line_id, :presence=> true
  validates :order_id, :presence=> true
  validates :item_line, :presence=> true


  def price_in_nis
    price.to_d/100 if price
  end

  def price_in_nis=(dollars)
    self.price = dollars.to_d*100 if dollars.present?
  end

  def received_in_nis
    received.to_d/100 if received
  end

  def received_in_nis=(dollars)
    self.received = dollars.to_d*100 if dollars.present?
  end

end
