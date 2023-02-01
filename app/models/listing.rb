class Listing < ApplicationRecord
  validates :title, presence: true
end
