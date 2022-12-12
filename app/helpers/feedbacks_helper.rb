module FeedbacksHelper

  def is_first_contact_or_debrief?(coach_meeting)
    if Meeting.find(coach_meeting.id).meeting_type == "first_contact" || Meeting.find(coach_meeting.id).meeting_type == "debrief"
      return true
    else
      return false
    end
  end

end
