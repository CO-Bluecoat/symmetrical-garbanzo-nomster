class PhotosController < ApplicationController
  def edit
    @photo = Photo.find(params[:id])
  end

  def create
    p params
    @place = Place.find(params[:place_id])

    @place.photos.create(
      photo_params
    )
    redirect_to place_path(@place)
  end

  def update
    @photo = Photo.find(params[:id])

    if @photo = Photo.find(params[:photo])
      redirect_to @photo
    else
      render :edit
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :picture, :place_id)
  end
end