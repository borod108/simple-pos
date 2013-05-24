class Sale < ActiveRecord::Base
  attr_accessible :client, :date, :price, :recived, :sale_line_id, :sales_person_id, :user_id
end
