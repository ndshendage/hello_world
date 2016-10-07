json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :address, :gender, :age
  json.url customer_url(customer, format: :json)
end
