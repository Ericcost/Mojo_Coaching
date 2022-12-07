class CreateMeetings < ActiveRecord::Migration[7.0]
  def change
    create_table :meetings do |t|
      t.belongs_to :coach, index: true, foreign_key: {to_table: :users}
      t.belongs_to :driver, index: true, foreign_key: {to_table: :users}
      t.belongs_to :availability, index: true
      t.integer :duration
      t.integer :meeting_type
      t.string :video_url
      t.belongs_to :com_mean, index: true
      t.belongs_to :car, index: true
      t.belongs_to :track, index: true

      t.timestamps
    end
  end
end
