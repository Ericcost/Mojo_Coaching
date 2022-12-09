class JoinTableUserTracksController < ApplicationController
  before_action :set_join_table_user_track, only: %i[ show edit update destroy ]

  # GET /join_table_user_tracks or /join_table_user_tracks.json
  def index
    @join_table_user_tracks = JoinTableUserTrack.all
  end

  # GET /join_table_user_tracks/1 or /join_table_user_tracks/1.json
  def show
  end

  # GET /join_table_user_tracks/new
  def new
    @join_table_user_track = JoinTableUserTrack.new
  end

  # GET /join_table_user_tracks/1/edit
  def edit
  end

  # POST /join_table_user_tracks or /join_table_user_tracks.json
  def create
    @new_join_table_user_track = JoinTableUserTrack.new(user_id: current_user.id, track_id: params[:track_id], is_driver: params[:is_driver], is_coach: params[:is_coach])

    respond_to do |format|
      if @new_join_table_user_track.save
        format.html { redirect_to tracks_path, notice: "Join table user track was successfully created." }
        format.json { render :show, status: :created, location: @new_join_table_user_track }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @new_join_table_user_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /join_table_user_tracks/1 or /join_table_user_tracks/1.json
  def update
    respond_to do |format|
      if @join_table_user_track.update(is_driver: params[:is_driver], is_coach: params[:is_coach])
        format.html { redirect_to tracks_path, notice: "Join table user track was successfully updated." }
        format.json { render :show, status: :ok, location: @join_table_user_track }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @join_table_user_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /join_table_user_tracks/1 or /join_table_user_tracks/1.json
  def destroy
    @join_table_user_track.destroy

    respond_to do |format|
      format.html { redirect_to join_table_user_tracks_url, notice: "Join table user track was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_join_table_user_track
      @join_table_user_track = JoinTableUserTrack.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def join_table_user_track_params
      params.fetch(:join_table_user_track, {})
    end
end
