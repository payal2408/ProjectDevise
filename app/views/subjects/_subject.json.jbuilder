json.extract! subject, :id, :name, :email, :login, :created_at, :updated_at
json.url subject_url(subject, format: :json)
