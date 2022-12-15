class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.text :awards
      t.boolean :is_admin, default: false

      t.timestamps
    end
  end
end
