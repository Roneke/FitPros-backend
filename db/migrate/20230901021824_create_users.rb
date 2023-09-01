class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :First_name
      t.string :Last_name
      t.string :Email
      t.string :Password_digest
      t.string :Profile_img
      t.string :Industry
      t.string :Job_title
      t.string :Bio
      t.integer :Weekly_mile_goal

      t.timestamps
    end
  end
end
