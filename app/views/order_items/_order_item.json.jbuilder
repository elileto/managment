json.extract! order_item, :id, :order_id, :material_id, :number_of_units, :created_at, :updated_at
json.url order_item_url(order_item, format: :json)
