class ComMeansController < ApplicationController
  before_action :set_com_mean, only: %i[ show edit update destroy ]

  # GET /com_means or /com_means.json
  def index
    @com_means = ComMean.all
  end

  # GET /com_means/1 or /com_means/1.json
  def show
  end

  # GET /com_means/new
  def new
    @com_mean = ComMean.new
  end

  # GET /com_means/1/edit
  def edit
  end

  # POST /com_means or /com_means.json
  def create
    @com_mean = ComMean.new(com_mean_params)

    respond_to do |format|
      if @com_mean.save
        format.html { redirect_to com_mean_url(@com_mean), notice: "Com mean was successfully created." }
        format.json { render :show, status: :created, location: @com_mean }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @com_mean.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /com_means/1 or /com_means/1.json
  def update
    respond_to do |format|
      if @com_mean.update(com_mean_params)
        format.html { redirect_to com_mean_url(@com_mean), notice: "Com mean was successfully updated." }
        format.json { render :show, status: :ok, location: @com_mean }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @com_mean.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /com_means/1 or /com_means/1.json
  def destroy
    @com_mean.destroy

    respond_to do |format|
      format.html { redirect_to com_means_url, notice: "Com mean was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_com_mean
      @com_mean = ComMean.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def com_mean_params
      params.fetch(:com_mean, {})
    end
end
