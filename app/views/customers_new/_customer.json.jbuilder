json.extract! customer, :id, :name, :address, :gender, :age, :created_at, :updated_at
json.url customer_url(customer, format: :json)