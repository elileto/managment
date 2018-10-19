class CreateOrderDates < ActiveRecord::Migration[5.2]
  def change
    create_table :order_dates do |t|
      t.integer :order_id
      t.datetime :order_placed
      t.datetime :order_received
      t.boolean :order_complete
      t.belongs_to :order
      t.timestamps
    end
  end
end
