class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :material_id
      t.decimal :number_of_units
      t.belongs_to :order
      t.belongs_to :material
      t.timestamps
    end
  end
end
