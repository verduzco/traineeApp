class CitiesController < ApplicationController
  def main
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def create
    City.create(params[:city])
    redirect_to "/cities"
  end
end
