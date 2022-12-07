require 'rails_helper'

RSpec.describe Availability, type: :model do

    before(:each) do
        @user = User.create(email: "kevlaterreuradmin@yopmail.fr", password: "123456")
        @availability = Availability.create(user_id: @user.id, start_date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 365), duration: 30)
    end

    context "validation" do

        it "is valid with valid attributes" do
            expect(@availability).to be_a(Availability)
            expect(@availability).to be_valid
        end

        describe "#user_id" do
          it "should not be valid with a wrong user_id format entrance" do
            bad_availability = Availability.create(user_id: "string", start_date: @availability.start_date, duration: 30)
            expect(bad_availability).not_to be_valid
            expect(bad_availability.errors.include?(:user_id)).to eq(true)
            end
        end

        describe "#start_date" do
          it "should not be valid with a wrong start_date format entrance" do
            bad_availability = Availability.create(user_id: @user.id, start_date: "", duration: 30)
            expect(bad_availability).not_to be_valid
            expect(bad_availability.errors.include?(:start_date)).to eq(true)
            end
        end

        describe "#duration" do
          it "should not be valid with a wrong start_date format entrance" do
            bad_availability = Availability.create(user_id: @user.id, start_date: @availability.start_date, duration: "string")
            expect(bad_availability).not_to be_valid
            expect(bad_availability.errors.include?(:duration)).to eq(true)
            end
        end

    end


end