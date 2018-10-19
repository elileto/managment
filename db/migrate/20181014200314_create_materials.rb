class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :name
      t.integer :material_num
      t.integer :inventory_id
      t.belongs_to :inventory
      t.timestamps
    end
  end
end
