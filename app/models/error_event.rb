class ErrorEvent < ApplicationRecord
  validates :message, presence: true
  belongs_to :server
end
