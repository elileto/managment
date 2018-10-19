class CreateCosts < ActiveRecord::Migration[5.2]
  def change
    create_table :costs do |t|
      t.integer :material_id
      t.decimal :price_per_unit
      t.string :unit
      t.belongs_to :material
      t.timestamps
    end
  end
end
