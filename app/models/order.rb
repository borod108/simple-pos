class Order < ActiveRecord::Base
  attr_accessible :date,:sales_person_id,:user_id

  has_many :sales
  belongs_to :user
  belongs_to :sales_person, class_name: User

  def count
    sales.count
  end

  def sum
    sum= 0
    sales.each{|s| sum = sum + s.price}
    sum
  end
end