class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :profile_img
      t.string :industry
      t.string :job_title
      t.string :bio
      t.integer :weekly_mile_goal

      t.timestamps
    end
  end
end
