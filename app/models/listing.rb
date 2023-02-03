class Listing < ApplicationRecord
  belongs_to :user
  validates :location, :title, presence: true

  def self.search(search)
    if search
      listing_location = Listing.find_by(location: search)
      if listing_location
        self.where(listing_id: listing_location)
      else
        @listings = Listing.all
      end
    else
      @listings = Listing.all
    end
  end
end
