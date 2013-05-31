class AddSalesPersonIdToSale < ActiveRecord::Migration
  def change
    add_column :sales, :sales_person_id, :integer
  end
end
