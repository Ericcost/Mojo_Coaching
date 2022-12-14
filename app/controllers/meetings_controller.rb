class MeetingsController < ApplicationController
  before_action :set_meeting, only: %i[ show edit update destroy ]

  # GET /meetings or /meetings.json
  def index
    @meetings = Meeting.all
  end

  # GET /meetings/1 or /meetings/1.json
  def show
  end

  # GET /meetings/new
  def new
    @coach = meeting_coach
    @driver = current_user
    @coach_availabilities = get_coach_all_availability
    @coach_cars = get_coach_all_car
    @coach_tracks = get_coach_all_track
    @coach_com_means = get_coach_all_com_mean
  end

  # GET /meetings/1/edit
  def edit
  end

  # POST /meetings or /meetings.json
  def create
    @coach = meeting_coach
    @coach_availabilities = get_coach_all_availability
    @coach_cars = get_coach_all_car
    @coach_tracks = get_coach_all_track
    @coach_com_means = get_coach_all_com_mean
    @driver = current_user
    @new_meeting = Meeting.create!(
      coach_id: params[:coach_id],
      driver_id: current_user.id,
      availability_id: params[:availability_id].to_i,
      duration: 30,
      meeting_type: params[:meeting_type].to_i,
      video_url: params[:video_url],
      com_mean_id: params[:com_mean].to_i,
      car_id: params[:car].to_i,
      track_id: params[:track].to_i,
    )

    update_availabilities

    respond_to do |format|
      if @new_meeting.save
        format.html { redirect_to meeting_url(@new_meeting), notice: "Meeting was successfully created." }
        format.json { render :show, status: :created, location: @new_meeting.id }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @new_meeting.errors, status: :unprocessable_entity }
      end
    end
    
    check_meeting_type
  end

  # PATCH/PUT /meetings/1 or /meetings/1.json
  def update
    respond_to do |format|
      if @meeting.update(meeting_params)
        format.html { redirect_to meeting_url(@meeting), notice: "Meeting was successfully updated." }
        format.json { render :show, status: :ok, location: @meeting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meetings/1 or /meetings/1.json
  def destroy
    @meeting.destroy

    respond_to do |format|
      format.html { redirect_to meetings_url, notice: "Meeting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting
      @meeting = Meeting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def meeting_params
      params.fetch(:meeting, {})
    end
end
