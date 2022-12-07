require 'rails_helper'

RSpec.describe Meeting, type: :model do

    before(:each) do
        @meeting = Meeting.create(coach_id: 1, driver_id: 2, availability_id: 1, reason: "first contact", com_mean_id: 1, track_id: 1, car_id: 1)
    end

    context "validation" do

        it "is valid with valid attributes" do
          expect(@meeting).to be_a(Meeting)
          expect(@meeting).to be_valid
        end

        describe "#coach_id" do
          it "should not be valid with a wrong coach_id format entrance" do
            bad_user = Meeting.create(coach_id: "string", driver_id: 2, availability_id: 1, reason: "first contact", com_mean_id: 1)
            expect(bad_user).not_to be_valid
            expect(bad_user.errors.include?(:coach_id)).to eq(true)
          end
        end

        describe "#driver_id" do
          it "should not be valid with a wrong driver_id format entrance" do
            bad_user = Meeting.create(coach_id: 1, driver_id: true, availability_id: 1, reason: "first contact", com_mean_id: 1)
            expect(bad_user).not_to be_valid
            expect(bad_user.errors.include?(:driver_id)).to eq(true)
          end
        end

				describe "#availability_id" do
          it "should not be valid with a wrong availability_id format entrance" do
            bad_user = Meeting.create(coach_id: 1, driver_id: 2, availability_id: "string", reason: "first contact", com_mean_id: 1)
            expect(bad_user).not_to be_valid
            expect(bad_user.errors.include?(:availability_id)).to eq(true)
          end
        end

				describe "#reason" do
          it "should not be valid with a wrong reason format entrance" do
            bad_user = Meeting.create(coach_id: 1, driver_id: true, availability_id: 1, reason: "", com_mean_id: 1)
            expect(bad_user).not_to be_valid
            expect(bad_user.errors.include?(:reason)).to eq(true)
          end
        end

				describe "#com_mean_id" do
          it "should not be valid with a wrong com_mean_id format entrance" do
            bad_user = Meeting.create(coach_id: 1, driver_id: true, availability_id: 1, reason: "first contact", com_mean_id: "string")
            expect(bad_user).not_to be_valid
            expect(bad_user.errors.include?(:com_mean_id)).to eq(true)
          end
        end

    end

    

    
    
end