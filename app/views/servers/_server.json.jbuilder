json.extract! server, :id, :name, :ipaddress, :hostname, :loginname, :loginpassword, :created_at, :updated_at
json.url server_url(server, format: :json)