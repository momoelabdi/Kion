class ListingsController < ApplicationController

  def index
    @listing = 'Hello World!'
  end

  def create
    @listing = Lintings.new(listing_params)
    if @listing.save
      redirect_to index
    end
  end

  private

  def listing_params
    params.require([:title, :location, :description]).permit()
  end

end
