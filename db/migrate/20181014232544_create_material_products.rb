class CreateMaterialProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :material_products do |t|
      t.integer :material_id
      t.integer :product_id
      t.belongs_to :material
      t.belongs_to :product
      t.timestamps
    end
  end
end
