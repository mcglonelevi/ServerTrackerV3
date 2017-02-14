class Server < ApplicationRecord
  has_many :error_events
  has_many :data_values
end
