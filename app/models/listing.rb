class Listing < ApplicationRecord
  validates :title, :location, :description, presence: true
end
