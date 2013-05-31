class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :date
      t.integer :sales_person_id
      t.integer :user_id

      t.timestamps
    end
  end
end
