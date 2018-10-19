class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :order_num
      t.integer :manufacture_id
      t.belongs_to :manufacture
      t.timestamps
    end
  end
end
