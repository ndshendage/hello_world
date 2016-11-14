json.extract! person, :id, :name, :address, :gender, :age, :country, :state, :city, :is_disable, :skills, :created_at, :updated_at
json.url person_url(person, format: :json)