class ListingsController < ApplicationController
    def index
      @listings = Listing.all()
    end

    def create
      @listing = Listing.new(listing_params)
      @listing.save
      redirect_to @listing

    end



  private

    def listing_params
      params[:title].present? && params[:location].present? && params[:description].present?
    end
end
