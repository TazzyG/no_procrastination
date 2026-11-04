class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  # Ensure the options are properly enclosed in a hash
  validates :email_address, presence: true, uniqueness: true,
            inclusion: { in: ["laurie@friendlyroad.com"], message: "is not authorized" }
end
