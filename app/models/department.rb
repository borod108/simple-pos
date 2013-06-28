class Department < ActiveRecord::Base
  attr_accessible :name
  has_many :item_types


  def balance

    cost = ItemLine.count_by_sql("select sum(cost*quantity)  from item_lines inner join items on item_id = items.id inner join "\
    "item_types on item_types.id = item_type_id where department_id = #{id}")
    income = Sale.count_by_sql("select sum(received) from sales inner join item_lines on item_lines.id = item_line_id inner join items on items.id = item_id "\
    "inner join item_types on item_types.id = item_type_id where department_id = #{id}")

    return (income - cost)/100.0
  end

  def unfinished_deals
    Sale.joins("inner join item_lines on item_lines.id = item_line_id inner join items on items.id = item_id inner join item_types on item_types.id = item_type_id")
    .where("department_id = ? AND received < price",id)
  end
end
