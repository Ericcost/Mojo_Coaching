require 'rails_helper'

RSpec.describe Feedback, type: :model do

    before(:each) do
        @meeting = Meeting.create(coach_id: 1, driver_id: 2, availability_id: 1, meeting_type: "first contact", com_mean_id: 1, track_id: 1, car_id: 1) 
        @feedback = Feedback.create(content: "You must slow down and break harder when you turn on the right at the third turn", meeting_id: @meeting.id)
    end

    context "validation" do

        it "is valid with valid attributes" do
            expect(@feedback).to be_a(Feedback)
            expect(@feedback).to be_valid
          end

          describe "#feedback" do
          it "should not be valid with an inexisting feedback" do
            bad_feedback = Feedback.create(content: "", meeting_id: @meeting.id)
            expect(bad_feedback).not_to be_valid
            expect(bad_feedback.errors.include?(:content)).to eq(true)
          end
        end
    
    end

    context "associations" do

        describe "feedbacks" do
          it "should belongs to meeting" do
            expect(@meeting.feedbacks.include?(@feedback)).to eq(true)
          end
        end


    end

    

    
    
end