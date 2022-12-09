module MeetingsHelper

def meeting_coach
  User.find(params[:coach_id])
end


end
