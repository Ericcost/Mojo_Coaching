class CommunicationmeansController < ApplicationController
  before_action :set_communicationmean, only: %i[ show edit update destroy ]

  # GET /communicationmeans or /communicationmeans.json
  def index
    @communicationmeans = Communicationmean.all
  end

  # GET /communicationmeans/1 or /communicationmeans/1.json
  def show
  end

  # GET /communicationmeans/new
  def new
    @communicationmean = Communicationmean.new
  end

  # GET /communicationmeans/1/edit
  def edit
  end

  # POST /communicationmeans or /communicationmeans.json
  def create
    @communicationmean = Communicationmean.new(communicationmean_params)

    respond_to do |format|
      if @communicationmean.save
        format.html { redirect_to communicationmean_url(@communicationmean), notice: "Communicationmean was successfully created." }
        format.json { render :show, status: :created, location: @communicationmean }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @communicationmean.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /communicationmeans/1 or /communicationmeans/1.json
  def update
    respond_to do |format|
      if @communicationmean.update(communicationmean_params)
        format.html { redirect_to communicationmean_url(@communicationmean), notice: "Communicationmean was successfully updated." }
        format.json { render :show, status: :ok, location: @communicationmean }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @communicationmean.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /communicationmeans/1 or /communicationmeans/1.json
  def destroy
    @communicationmean.destroy

    respond_to do |format|
      format.html { redirect_to communicationmeans_url, notice: "Communicationmean was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_communicationmean
      @communicationmean = Communicationmean.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def communicationmean_params
      params.fetch(:communicationmean, {})
    end
end
