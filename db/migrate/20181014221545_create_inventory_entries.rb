class CreateInventoryEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :inventory_entries do |t|
      t.integer :inventory_id
      t.datetime :entry_date
      t.decimal :number_of_units
      t.belongs_to :inventory
      t.timestamps
    end
  end
end
