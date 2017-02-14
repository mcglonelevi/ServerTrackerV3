json.extract! server_error_event, :id, :message, :created_at, :updated_at
json.url server_error_event_url(server_error_event, format: :json)