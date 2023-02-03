class ListingsController < ApplicationController

  def index
    @listings = Listing.all
  end

  def create
    @current_user = current_user.id
    @listing = Listing.new(listings_params)
    @listing.user_id = @current_user
    @listing.save
    flash[:notice] = 'Listing created successfully'
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
    @current_user = current_user.id
    if @listing.user_id == @current_user
      @listing.update(listings_params)
      @listing.save
    else
      flash[:alert] = "You can't edit this listing it doesn't belong to you"
    end
    redirect_to root_path
  end

  def destroy
    @listing = Listing.find(params[:id])
    if @listing.user_id == current_user.id
    @listing.destroy
    flash[:notice] = 'Listing deleted successfully'
    else
      flash[:alert] = "You can't delete this listing it doesn't belong to you"
    end
    redirect_to root_path
  end

  def search
    if params[:search].present?
      @listings = Listing.search(params[:search])
    elsif params[:search].blank?
      redirect_to root_path, alert: 'Empty field!' and return
    end
  end

  private

  def listings_params
    params.permit(:title, :location, :description)
  end
end
