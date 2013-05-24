class CreateItemLinePrices < ActiveRecord::Migration
  def change
    create_table :item_line_prices do |t|
      t.integer :item_line_id
      t.integer :recommended_price

      t.timestamps
    end
  end
end
