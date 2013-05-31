class ChangeSalesModelWithOrder < ActiveRecord::Migration
  def up
    remove_column :sales, :user_id
    remove_column :sales, :sales_person_id
    remove_column :sales, :date

    add_column :sales, :order_id, :integer
  end

  def down
    add_column :sales, :user_id, :integer
    add_column :sales, :sales_person_id, :integer
    add_column :sales, :date, :date

    remove_column :sales, :order_id
  end
end
