json.extract! user_x_service, :id, :name, :email, :service, :servicedate, :message, :created_at, :updated_at
json.url user_x_service_url(user_x_service, format: :json)
