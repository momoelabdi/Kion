class ListingsController < ApplicationController

  def index
    @listings = Listing.all
  end

  def create
    @listing = Listing.new
    @listing.attributes = { title: params[:title], location: params[:location], description: params[:description] }
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
    @listing.attributes = { title: params[:title], location: params[:location], description: params[:description] }
    @listing.save
    redirect_to root_path
  end
end
