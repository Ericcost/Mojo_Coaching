class CreateJoinTableUserTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :join_table_user_tracks do |t|

      t.timestamps
    end
  end
end
