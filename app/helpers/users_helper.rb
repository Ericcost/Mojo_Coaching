module UsersHelper

    def other_coachs
        @coachs = []
        Availability.all.each do |availability|
            @coachs << User.find(availability.user_id)
        end
        @coachs.uniq!
        @other_coachs = @coachs.reject {|element| element == current_user }
        return @other_coachs
    end


    def my_profile?
        return current_user == @user 
    end

    def my_tracks_as_coach
        array_of_my_tracks_as_coach = []
        JoinTableUserTrack.where(user_id: @user.id, is_coach: true).each do |item|
            array_of_my_tracks_as_coach << Track.find(item.track_id)
        end
        return array_of_my_tracks_as_coach
    end

    def my_tracks_as_driver
        array_of_my_tracks_as_driver = []
        JoinTableUserTrack.where(user_id: @user.id, is_driver: true).each do |item|
            array_of_my_tracks_as_driver << Track.find(item.track_id)
        end
        return array_of_my_tracks_as_driver
    end

    def my_cars_as_coach
        array_of_my_cars_as_coach = []
        JoinTableUserCar.where(user_id: @user.id, is_coach: true).each do |item|
            array_of_my_cars_as_coach << Car.find(item.car_id)
        end
        return array_of_my_cars_as_coach
    end

    def my_cars_as_driver
        array_of_my_cars_as_driver = []
        JoinTableUserCar.where(user_id: @user.id, is_driver: true).each do |item|
            array_of_my_cars_as_driver << Car.find(item.car_id)
        end
        return array_of_my_cars_as_driver
    end

    def my_meetings_as_coach
        Meeting.where(coach_id: @user.id)
    end

    def my_meetings_as_driver
        Meeting.where(driver_id: @user.id)
    end

    def my_availabilities_as_coach
        Availability.where(user_id: @user.id)
    end

end
