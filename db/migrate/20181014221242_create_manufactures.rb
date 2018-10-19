class CreateManufactures < ActiveRecord::Migration[5.2]
  def change
    create_table :manufactures do |t|
      t.string :contact
      t.string :phone_number
      t.string :business_name
      t.string :website
      t.string :email
      t.timestamps

    end
  end
end
