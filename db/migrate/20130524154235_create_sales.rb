class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :user_id
      t.integer :sales_person_id
      t.integer :item_id
      t.string :client
      t.integer :price
      t.integer :received
      t.date :date

      t.timestamps
    end
  end
end
