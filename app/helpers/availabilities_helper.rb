module AvailabilitiesHelper

  def create_slot
    array_of_slot = []
    slot_duration = 0
    (params[:start_date].to_datetime.to_i .. ((params[:end_date].to_datetime) - 30.minute).to_i).step(30.minute) do
      slot = params[:start_date].to_datetime + slot_duration
      array_of_slot << slot
      slot_duration += 30.minute
    end
    return array_of_slot
  end

end
