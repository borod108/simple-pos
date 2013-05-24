class CreateItemLines < ActiveRecord::Migration
  def change
    create_table :item_lines do |t|
      t.integer :item_id
      t.integer :quantity
      t.integer :cost
      t.integer :cost_with_shipment
      t.integer :shipment_id

      t.timestamps
    end
  end
end
