json.extract! order_date, :id, :order_placed, :order_received, :order_complete, :created_at, :updated_at
json.url order_date_url(order_date, format: :json)
