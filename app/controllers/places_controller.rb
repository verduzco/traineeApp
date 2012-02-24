class PlacesController < ApplicationController
  def main
    @places=Place.all
  end

  def new
    @place = Place.new
  end

  def create
    Place.create(params[:place])
    redirect_to "/places"
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update
    @place = Place.find(params[:id])
    @place.update_attributes(params[:place])
    redirect_to "/places"
  end

  def delete
    Place.find(params[:id]).delete
    redirect_to "/places"
  end
end
