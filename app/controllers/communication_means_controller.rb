class CommunicationMeansController < ApplicationController
  before_action :set_communication_mean, only: %i[ show edit update destroy ]

  # GET /communication_means or /communication_means.json
  def index
    @communication_means = CommunicationMean.all
  end

  # GET /communication_means/1 or /communication_means/1.json
  def show
  end

  # GET /communication_means/new
  def new
    @communication_mean = CommunicationMean.new
  end

  # GET /communication_means/1/edit
  def edit
  end

  # POST /communication_means or /communication_means.json
  def create
    @communication_mean = CommunicationMean.new(communication_mean_params)

    respond_to do |format|
      if @communication_mean.save
        format.html { redirect_to communication_mean_url(@communication_mean), notice: "Communication mean was successfully created." }
        format.json { render :show, status: :created, location: @communication_mean }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @communication_mean.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /communication_means/1 or /communication_means/1.json
  def update
    respond_to do |format|
      if @communication_mean.update(communication_mean_params)
        format.html { redirect_to communication_mean_url(@communication_mean), notice: "Communication mean was successfully updated." }
        format.json { render :show, status: :ok, location: @communication_mean }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @communication_mean.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /communication_means/1 or /communication_means/1.json
  def destroy
    @communication_mean.destroy

    respond_to do |format|
      format.html { redirect_to communication_means_url, notice: "Communication mean was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_communication_mean
      @communication_mean = CommunicationMean.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def communication_mean_params
      params.fetch(:communication_mean, {})
    end
end
