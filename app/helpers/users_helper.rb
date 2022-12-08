module UsersHelper

    def coachs
        @coachs = []
        Availability.all.each do |availability|
            @coachs << User.find(availability.user_id)
        end
        @coachs.uniq!
        return @coachs
    end
end
