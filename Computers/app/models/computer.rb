class Computer < ApplicationRecord
  # Fields must be filled in
  validates :name, :availability, :color, :serial_number, presence: true

  # Makes sure the serial_number is unique before creating a new computer
  validates :serial_number, uniqueness: true, on: :create
  
  # Regex only allows a - z (either caps) and 0 - 9
  validates :serial_number, format: { with: /\A[a-zA-Z0-9]*\z/ }
end
