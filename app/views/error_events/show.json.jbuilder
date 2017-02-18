json.extract! @error_event, :id, :message, :created_at, :updated_at
#json.url server_url(error_event, format: :json)