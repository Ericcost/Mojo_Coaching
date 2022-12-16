class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
    @user_tracks_as_coach = my_tracks_as_coach
    @user_tracks_as_driver = my_tracks_as_driver
    @user_cars_as_coach = my_cars_as_coach
    @user_cars_as_driver = my_cars_as_driver
    @user_meetings_as_coach = my_meetings_as_coach
    @user_meetings_as_driver = my_meetings_as_driver
    @user_availabilities = my_availabilities_as_coach
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    set_user
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to user_url(@user), notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
<<<<<<< HEAD
      params.fetch(:user, {}).permit(:first_name, :last_name, :email, :awards, :password)
=======
      params.fetch(:user, {}).permit(:first_name, :last_name, :description, :email, :awards, :password)
>>>>>>> 92f946d4c2704d8ab81a11fc50529dc929b4e127
    end
end
