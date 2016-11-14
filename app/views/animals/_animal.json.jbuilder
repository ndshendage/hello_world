json.extract! animal, :id, :name, :location, :age, :description, :created_at, :updated_at
json.url animal_url(animal, format: :json)