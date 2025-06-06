class User < ApplicationRecord
  has_rich_text :description
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
