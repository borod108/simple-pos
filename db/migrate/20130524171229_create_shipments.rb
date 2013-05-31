class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.integer :cost
      t.date :date

      t.timestamps
    end
  end
end
