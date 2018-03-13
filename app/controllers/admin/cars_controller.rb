class CarsController < ApplicationController
  before_action :set_admin_car, only: [:show, :edit, :update, :destroy]

  # GET /admin/cars
  # GET /admin/cars.json
  def index
    @admin_cars = Car.all
  end

  # GET /admin/cars/1
  # GET /admin/cars/1.json
  def show
  end

  # GET /admin/cars/new
  def new
    @admin_car = Car.new
  end

  # GET /admin/cars/1/edit
  def edit
  end

  # POST /admin/cars
  # POST /admin/cars.json
  def create
    @admin_car = Car.new(admin_car_params)

    respond_to do |format|
      if @admin_car.save
        format.html { redirect_to @admin_car, notice: 'Car was successfully created.' }
        format.json { render :show, status: :created, location: @admin_car }
      else
        format.html { render :new }
        format.json { render json: @admin_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/cars/1
  # PATCH/PUT /admin/cars/1.json
  def update
    respond_to do |format|
      if @admin_car.update(admin_car_params)
        format.html { redirect_to @admin_car, notice: 'Car was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_car }
      else
        format.html { render :edit }
        format.json { render json: @admin_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/cars/1
  # DELETE /admin/cars/1.json
  def destroy
    @admin_car.destroy
    respond_to do |format|
      format.html { redirect_to admin_cars_url, notice: 'Car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_car
      @admin_car = Car.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_car_params
      params.require(:admin_car).permit(:manufactuture, :model, :year)
    end
end
