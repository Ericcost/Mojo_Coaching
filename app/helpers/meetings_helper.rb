module MeetingsHelper

  def meeting_coach
    User.find(params[:coach_id])
  end

  def get_coach_all_availability
    array_of_availability = []
    Availability.where(user_id: params[:coach_id].to_i).each do |availability|
      array_of_availability << availability
    end
    return array_of_availability
  end

  def get_coach_all_car
    array_of_car = []
    JoinTableUserCar.where(user_id: 1, is_coach: true).each do |car|
      array_of_car << Car.find(car.car_id)
    end
    return array_of_car
  end

  def get_coach_all_track
    array_of_track = []
    JoinTableUserTrack.where(user_id: params[:coach_id].to_i, is_coach: true).each do |track|
      array_of_track << Track.find(track.track_id)
    end
    return array_of_track
  end

  def get_coach_all_com_mean
    array_of_com_mean = []
    JoinTableUserComMean.where(user_id: params[:coach_id].to_i).each do |commean|
      array_of_com_mean << ComMean.find(commean.com_mean_id)
    end
    return array_of_com_mean
  end

end
