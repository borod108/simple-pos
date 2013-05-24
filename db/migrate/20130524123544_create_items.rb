class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :item_type_id
      t.integer :weight

      t.timestamps
    end
  end
end
