class ItemType < ActiveRecord::Base
  attr_accessible :department_id, :name
  belongs_to :department
  has_many :items
end
