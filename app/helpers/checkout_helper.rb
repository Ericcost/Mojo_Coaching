module CheckoutHelper

  def calcul_total
    if @new_meeting.meeting_type == "first_contact" || @new_meeting.meeting_type == "debrief"
      return @total = User.find(params[:coach_id]).price_per_hour / 2
    elsif @new_meeting.meeting_type == "coaching"
      return @total = User.find(params[:coach_id]).price_per_hour
    end
  end

end
