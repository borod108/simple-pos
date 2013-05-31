class RenameItemIdToItemLineIdInSales < ActiveRecord::Migration
  def change
    rename_column :sales, :item_id, :item_line_id
  end
end
