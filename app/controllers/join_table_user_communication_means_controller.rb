class JoinTableUserCommunicationMeansController < ApplicationController
  before_action :set_join_table_user_communication_mean, only: %i[ show edit update destroy ]

  # GET /join_table_user_communication_means or /join_table_user_communication_means.json
  def index
    @join_table_user_communication_means = JoinTableUserCommunicationMean.all
  end

  # GET /join_table_user_communication_means/1 or /join_table_user_communication_means/1.json
  def show
  end

  # GET /join_table_user_communication_means/new
  def new
    @join_table_user_communication_mean = JoinTableUserCommunicationMean.new
  end

  # GET /join_table_user_communication_means/1/edit
  def edit
  end

  # POST /join_table_user_communication_means or /join_table_user_communication_means.json
  def create
    @join_table_user_communication_mean = JoinTableUserCommunicationMean.new(join_table_user_communication_mean_params)

    respond_to do |format|
      if @join_table_user_communication_mean.save
        format.html { redirect_to join_table_user_communication_mean_url(@join_table_user_communication_mean), notice: "Join table user communication mean was successfully created." }
        format.json { render :show, status: :created, location: @join_table_user_communication_mean }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @join_table_user_communication_mean.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /join_table_user_communication_means/1 or /join_table_user_communication_means/1.json
  def update
    respond_to do |format|
      if @join_table_user_communication_mean.update(join_table_user_communication_mean_params)
        format.html { redirect_to join_table_user_communication_mean_url(@join_table_user_communication_mean), notice: "Join table user communication mean was successfully updated." }
        format.json { render :show, status: :ok, location: @join_table_user_communication_mean }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @join_table_user_communication_mean.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /join_table_user_communication_means/1 or /join_table_user_communication_means/1.json
  def destroy
    @join_table_user_communication_mean.destroy

    respond_to do |format|
      format.html { redirect_to join_table_user_communication_means_url, notice: "Join table user communication mean was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_join_table_user_communication_mean
      @join_table_user_communication_mean = JoinTableUserCommunicationMean.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def join_table_user_communication_mean_params
      params.fetch(:join_table_user_communication_mean, {})
    end
end
