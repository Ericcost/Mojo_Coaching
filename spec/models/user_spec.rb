require 'rails_helper'

    RSpec.describe User, type :model do

        before(:each) do
            @user = User.create(first_name: "Kenny", last_name: "Taz", age: 28, email: "kevlaterreuradmin@yopmail.fr", password: "123456")
        end

        



    end