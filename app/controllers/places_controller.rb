class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index 
      @places = Place.all.page(params[:page]).per_page(5)
 end

  def new
      @place = Place.new
  end

  def create
    Place.create(place_params)
    redirect_to root_path
  end

  private

  def create
  current_user.places.create(place_params)
  redirect_to root_path
end
end