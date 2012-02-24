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
end
