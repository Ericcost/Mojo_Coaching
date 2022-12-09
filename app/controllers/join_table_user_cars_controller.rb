class JoinTableUserCarsController < ApplicationController
  before_action :set_join_table_user_car, only: %i[ show edit update destroy ]

  # GET /join_table_user_cars or /join_table_user_cars.json
  def index
    @join_table_user_cars = JoinTableUserCar.all
  end

  # GET /join_table_user_cars/1 or /join_table_user_cars/1.json
  def show
  end

  # GET /join_table_user_cars/new
  def new
    @join_table_user_car = JoinTableUserCar.new
  end

  # GET /join_table_user_cars/1/edit
  def edit
  end

  # POST /join_table_user_cars or /join_table_user_cars.json
  def create
    @new_join_table_user_car = JoinTableUserCar.new(user_id: current_user.id, car_id: params[:car_id], is_driver: params[:is_driver], is_coach: params[:is_coach])
    
    respond_to do |format|
      if @new_join_table_user_car.save
        format.html { redirect_to cars_path, notice: "Join table user car was successfully created." }
        format.json { render :show, status: :created, location: @new_join_table_user_car }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @new_join_table_user_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /join_table_user_cars/1 or /join_table_user_cars/1.json
  def update    
    respond_to do |format|
      if @join_table_user_car.update(is_driver: params[:is_driver], is_coach: params[:is_coach])
        format.html { redirect_to cars_path, notice: "Join table user car was successfully updated." }
        format.json { render :show, status: :ok, location: @join_table_user_car}
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @join_table_user_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /join_table_user_cars/1 or /join_table_user_cars/1.json
  def destroy
    @join_table_user_car.destroy

    respond_to do |format|
      format.html { redirect_to join_table_user_cars_url, notice: "Join table user car was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_join_table_user_car
      @join_table_user_car = JoinTableUserCar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def join_table_user_car_params
      params.fetch(:join_table_user_car, {})
    end
end
