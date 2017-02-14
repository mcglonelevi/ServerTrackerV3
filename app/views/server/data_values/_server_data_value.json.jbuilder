json.extract! server_data_value, :id, :name, :value, :created_at, :updated_at
json.url server_data_value_url(server_data_value, format: :json)