require 'rails_helper'

RSpec.describe Feedback, type: :model do

    before(:each) do
        @meeting = Meeting.create(coach_id: 1, driver_id: 2, availability_id: 1, meeting_type: rand(0..2), video_url: Faker::Internet.url, com_mean_id: 3, track_id: 7, car_id: 8) 
        @feedback = Feedback.create(content: "You must slow down and break harder when you turn on the right at the third turn", meeting_id: @meeting.id)
    end

    context "validation" do

        it "is valid with valid attributes" do
            expect(@feedback).to be_a(Feedback)
            expect(@feedback).to be_valid
          end

          describe "#feedback" do
          it "should not be valid with a content with less than two characters" do
            bad_feedback = Feedback.create(content: "a", meeting_id: @meeting.id)
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