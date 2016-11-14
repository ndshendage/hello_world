json.extract! student, :id, :name, :gender, :address, :age, :resume, :created_at, :updated_at
json.url student_url(student, format: :json)