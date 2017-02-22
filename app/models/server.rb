class Server < ApplicationRecord
  validates :name, presence: true
  validates :ipaddress, presence: true
  validates :hostname, presence: true
  validates :loginname, presence: true
  validates :loginpassword, presence: true

  has_many :error_events
  has_many :data_values
end
