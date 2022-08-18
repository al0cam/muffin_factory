json.extract! user, :id, :id, :name, :surname, :email, :balance, :created_at, :updated_at
json.url user_url(user, format: :json)
