json.array!(@orders) do |order|
  json.extract! order, :id, :customer_id, :items, :total, :payment_mode
  json.url order_url(order, format: :json)
end
