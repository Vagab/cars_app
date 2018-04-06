class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index
    @q = Car.ransack(params[:q])
    @cars = @q.result.includes(:articles).page(params[:page]).per(5)
  end

  def show
    @car = Car.find(params[:id])
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:manufacture, :model, :year)
  end

end
