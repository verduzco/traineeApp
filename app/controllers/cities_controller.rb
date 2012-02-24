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

  def edit
    @city = City.find(params[:id])
  end

  def update
    @city = City.find(params[:id])
    @city.update_attributes(params[:city]) 
    redirect_to "/cities"
  end

  def delete
    City.find(params[:id]).delete
    redirect_to "/cities"
  end

end
