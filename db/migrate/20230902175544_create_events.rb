class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :sport
      t.integer :distance
      t.datetime :date
      t.float :duration
      t.integer :user_id
      t.string :details
      t.string :city
      t.integer :zipcode
      t.float :latitude
      t.float :longtitude
      t.string :image

      t.timestamps
    end
  end
end
