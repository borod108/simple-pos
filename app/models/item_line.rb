class ItemLine < ActiveRecord::Base
  attr_accessible :cost_in_nis, :cost_with_shipment_in_nis, :item_id, :quantity, :shipment_id
  belongs_to :shipment
  belongs_to :item

  def cost_in_nis
    cost.to_d/100 if cost
  end

  def cost_in_nis=(dollars)
    self.cost = dollars.to_d*100 if dollars.present?
  end

  def cost_with_shipment_in_nis
    cost_with_shipment.to_d/100 if cost_with_shipment
  end

  def cost_with_shipment_in_nis=(dollars)
    self.cost_with_shipment = dollars.to_d*100 if dollars.present?
  end




  def self.forward_lines
    ItemLine.joins('inner join (
    select t.* from(
    select item_lines.id as balance_item_lines_id,
    COALESCE (quantity - sum(amount), quantity) as balance
    from item_lines left join sales
    on sales.item_line_id = item_lines.id
    group by quantity,item_lines.id
    ) as t where balance > 0
    ) as foo
    on item_lines.id = foo.balance_item_lines_id
    join shipments on item_lines.shipment_id = shipments.id

    inner join (select item_id,max(date) as max_date from item_lines inner join shipments on
    shipment_id = shipments.id group by item_id) AS inner_lines
    on (item_lines.item_id = inner_lines.item_id and shipments.date = inner_lines.max_date)')


    #'SELECT * FROM item_lines AS is INNER JOIN (SELECT item_lines. )'


  end

  def item_name
    self.item.name
  end
end
