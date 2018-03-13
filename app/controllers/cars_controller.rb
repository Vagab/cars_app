class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
    @car = Car.find(params[:id])
  end
end
