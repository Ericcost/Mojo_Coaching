class CreateMeetings < ActiveRecord::Migration[7.0]
  def change
    create_table :meetings do |t|
      t.belongs_to :user, index: true
      t.belongs_to :user, index: true
      t.belong_to :availability, index: true
      t.integer :duration
      t.string :reason
      t.string :video_url
      t.belongs_to :communicationmean, index: true
      t.belongs_to :car, index: true
      t.belongs_to :track, index: true
      t.belongs_to :feedback, index: true

      t.timestamps
    end
  end
end
