class ListingsController < ApplicationController

  def index
    @listings = Listing.all
  end

  def create
    @listing = Listing.new(listings_params)
    # @listing.attributes = { title: params[:title], location: params[:location], description: params[:description] }
    @listing.save
    redirect_to root_path
  end

  def new
    @listing = Listing.new
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.attributes = { user_id: params[:user_id], title: params[:title], location: params[:location], description: params[:description] }
    @listing.save
    redirect_to root_path
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to root_path
  end

  def listings_params
    params.permit(:title, :location, :description, :user_id)
  end
end
