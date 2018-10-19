json.extract! inventory_entry, :id, :inventory_id, :entry_date, :number_of_units, :created_at, :updated_at
json.url inventory_entry_url(inventory_entry, format: :json)
