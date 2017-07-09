class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  # GET /cars
  # GET /cars.json
  def index
    @cars = Car.all
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
  end

  # GET /cars/new
  def new
    @car = Car.new
    @photo = Photo.new
  end

  # GET /cars/1/edit
  def edit
    if (@car.photo_id.nil?)
      @photo = Photo.new
    else
      @photo = Photo.find(@car.photo_id)
    end
  end

  # POST /cars
  # POST /cars.json
  def create
    @car = Car.new(car_params)
    @photo = Photo.new(photo_params)

    respond_to do |format|
      if @photo.save
        @car.photo_id = @photo.id
        if @car.save
          format.html { redirect_to @car, notice: 'Car was successfully created.' }
          format.json { render :show, status: :created, location: @car }
        else
          format.html { render :new }
          format.json { render json: @car.errors, status: :unprocessable_entity }
        end
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end

    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    @photo = Photo.new(photo_params)

    respond_to do |format|
      if @photo.save
        @car.photo_id = @photo.id
        if @car.update(car_params)
          format.html { redirect_to @car, notice: 'Car was successfully updated.' }
          format.json { render :show, status: :ok, location: @car }
        else
          format.html { render :edit }
          format.json { render json: @car.errors, status: :unprocessable_entity }
        end
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: 'Car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      params.require(:car).permit(:color, :year, :model, :car_type, :photo_id)
    end

    # Allows photos to be uploaded through the car controller
    def photo_params
      params.require(:car).permit(:image)
    end
end
