json.extract! order, :id, :customer_id, :payment, :delivery_id, :created_at, :updated_at
json.url order_url(order, format: :json)
