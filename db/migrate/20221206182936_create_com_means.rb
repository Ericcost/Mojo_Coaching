class CreateComMeans < ActiveRecord::Migration[7.0]
  def change
    create_table :com_means do |t|
      t.string :communication_mean

      t.timestamps
    end
  end
end
