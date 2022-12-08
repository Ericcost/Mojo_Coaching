require 'rails_helper'

RSpec.describe JoinTableUserCar, type: :model do

    before(:each) do
        @user = User.create(email: "kevlaterreuradmin@yopmail.fr", password: "123456")
        @car= Car.create(model: "Ford")
        @join_table_user_car = JoinTableUserCar.create(user_id: @user.id, car_id: @car.id)
    end

    context "validation" do

        it "is valid with valid attributes" do
        expect(@join_table_user_car).to be_a(JoinTableUserCar)
        expect(@join_table_user_car).to be_valid
        end
    
    end

    context "associations" do

        describe "join_table_user_cars" do
          it "should belongs_to user" do
            expect(@user.join_table_user_cars.include?(@join_table_user_car)).to eq(true)
          end
        end

        describe "join_table_user_cars" do
          it "should belongs_to car" do
            expect(@car.join_table_user_cars.include?(@join_table_user_car)).to eq(true)
          end
        end

    end

    

    
    
end