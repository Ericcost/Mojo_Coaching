class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks do |t|
      t.belongs_to :meeting, index: true
      t.text :content

      t.timestamps
    end
  end
end
