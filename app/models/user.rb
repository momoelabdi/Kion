class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true, length: { minimum: 6 }
  has_many :listing
end
