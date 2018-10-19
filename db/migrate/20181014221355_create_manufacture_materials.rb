class CreateManufactureMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :manufacture_materials do |t|
      t.integer :material_id
      t.integer :manufacture_id
      t.belongs_to :manufacture
      t.belongs_to :material
      t.timestamps
    end
  end
end
