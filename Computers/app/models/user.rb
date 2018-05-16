class User < ApplicationRecord
  # Checks all fields have values 
  validates :name, :email, :address, presence: true

  # Checks the email isn't already registered on create
  validates :email, uniqueness: true, on: :create

  # Regex only allows normal characters and must contain "@spartaglobal.com" at the end
  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@spartaglobal\.com\z/,
                  message: "must be a spartaglobal.com account" }
end
