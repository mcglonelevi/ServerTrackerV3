class DataValue < ApplicationRecord
  validates :name, presence: true
  validates :value, presence: true
  belongs_to :server
end
