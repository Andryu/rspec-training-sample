json.extract! user, :id, :name, :nickname, :entity_status, :age, :created_at, :updated_at
json.url user_url(user, format: :json)
