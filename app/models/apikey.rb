class Apikey < ApplicationRecord
  validates :publickey, presence: true
  validates :privatekey, presence: true
end
