class ListingsController < ApplicationController

  def index
    @listing = 'Hello World!'
  end

  def new
    @listing = Lintings.new(listing_params)
    
    if @listing.save
      redirect_to index
    end
  end

  private
 def listing_params
  params.require([:listings ]).permit()
 end
end
