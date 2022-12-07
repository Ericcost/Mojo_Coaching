class CreateTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |t|
      t.string :country
      t.string :city
      t.integer :length

      t.timestamps
    end
  end
end
