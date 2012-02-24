class PlacesController < ApplicationController
  def main
    @places=Place.all
  end
end
