require 'rails_helper'

RSpec.describe Meeting, type: :model do

    before(:each) do
        @meeting = Meeting.create(coach_id: 1, driver_id: 2, availability_id: 1, meeting_type: rand(0..2), com_mean_id: 1)
    end

    context "validation" do

        it "is valid with valid attributes" do
          expect(@meeting).to be_a(Meeting)
          expect(@meeting).to be_valid
        end

        describe "#coach_id" do
          it "should not be valid with a wrong coach_id format entrance" do
            bad_user = Meeting.create(coach_id: "string", driver_id: 2, availability_id: 1, meeting_type: rand(0..2), com_mean_id: 1)
            expect(bad_user).not_to be_valid
            expect(bad_user.errors.include?(:coach_id)).to eq(true)
          end
        end

        describe "#driver_id" do
          it "should not be valid with a wrong driver_id format entrance" do
            bad_user = Meeting.create(coach_id: 1, driver_id: true, availability_id: 1, meeting_type: rand(0..2), com_mean_id: 1)
            expect(bad_user).not_to be_valid
            expect(bad_user.errors.include?(:driver_id)).to eq(true)
          end
        end

				describe "#availability_id" do
          it "should not be valid with a wrong availability_id format entrance" do
            bad_user = Meeting.create(coach_id: 1, driver_id: 2, availability_id: "string", meeting_type: rand(0..2), com_mean_id: 1)
            expect(bad_user).not_to be_valid
            expect(bad_user.errors.include?(:availability_id)).to eq(true)
          end
        end

				describe "#meeting_type" do
          it "should not be valid with a wrong meeting_type format entrance" do
            bad_user = Meeting.create(coach_id: 1, driver_id: true, availability_id: 1, meeting_type: "", com_mean_id: 1)
            expect(bad_user).not_to be_valid
            expect(bad_user.errors.include?(:meeting_type)).to eq(true)
          end
        end

				describe "#com_mean_id" do
          it "should not be valid with a wrong com_mean_id format entrance" do
            bad_user = Meeting.create(coach_id: 1, driver_id: true, availability_id: 1, meeting_type: rand(0..2), com_mean_id: "string")
            expect(bad_user).not_to be_valid
            expect(bad_user.errors.include?(:com_mean_id)).to eq(true)
          end
        end

    end

    

    
    
end