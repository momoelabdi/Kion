class Listing < ApplicationRecord
  belongs_to :user
  validates :location, :title, presence: true
  validates :title, length: { minimum: 3 }

  def self.search(search)
    if search
      where('title LIKE ?', "#{search[0..1]}%")
    else
      all
    end
  end
end
