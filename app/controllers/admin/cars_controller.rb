class Admin::CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def edit
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to admin_car_path(@car), notice: 'Car was successfully created.'
    else
      render :new
    end
  end

  def update
    if @car.update(car_params)
      redirect_to admin_car_path(@car), notice: 'Car was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @car.destroy
    redirect_to admin_cars_url, notice: 'Car was successfully destroyed.'
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:manufacture, :model, :year)
  end
end
