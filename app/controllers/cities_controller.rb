class CitiesController < ApplicationController
  def main
    @cities = City.all
  end
end
