class Listing < ApplicationRecord
  validates :title, :location, :description, presence: true
  belongs_to :user
end
